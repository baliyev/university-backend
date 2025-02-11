package az.edu.asoiu.config.security;

import az.edu.asoiu.dto.shared.ExceptionResponse;
import az.edu.asoiu.service.TokenService;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.jsonwebtoken.ExpiredJwtException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.lang.NonNull;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.time.LocalDateTime;

import static az.edu.asoiu.util.Constants.*;
import static jakarta.servlet.http.HttpServletResponse.SC_FORBIDDEN;
import static jakarta.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;
import static java.lang.Boolean.TRUE;
import static java.util.Objects.isNull;
import static java.util.Objects.nonNull;
import static org.springframework.http.HttpHeaders.AUTHORIZATION;
import static org.springframework.http.HttpStatus.FORBIDDEN;
import static org.springframework.http.HttpStatus.UNAUTHORIZED;

@Component
@RequiredArgsConstructor
public class AuthenticationFilter extends OncePerRequestFilter {

    private final UserDetailsService userDetailsService;
    private final TokenService tokenService;
    private final ObjectMapper objectMapper;

    @Override
    protected void doFilterInternal(@NonNull HttpServletRequest request,
                                    @NonNull HttpServletResponse response,
                                    @NonNull FilterChain filterChain) throws ServletException, IOException {
        if (isPathInWhiteList(request.getServletPath())) {
            filterChain.doFilter(request, response);
            return;
        }

        final var authHeader = request.getHeader(AUTHORIZATION);

        if (isNull(authHeader) || !authHeader.startsWith(BEARER)) {
            writeExceptionResponse(response, SC_UNAUTHORIZED, String.valueOf(UNAUTHORIZED), AUTHENTICATION_TOKEN_IS_NOT_EXIST_MSG, request.getRequestURI());
            return;
        }

        if (validateRequest(request, response, authHeader)) return;

        filterChain.doFilter(request, response);
    }

    private boolean validateRequest(HttpServletRequest request, HttpServletResponse response, String authHeader) throws IOException {
        try {
            final var jwt = authHeader.substring(7);
            final var username = tokenService.extractUsername(jwt);

            if (isNull(username) || nonNull(SecurityContextHolder.getContext().getAuthentication())) {
                writeExceptionResponse(response, SC_UNAUTHORIZED, String.valueOf(UNAUTHORIZED), VALIDATION_FAILED_MSG, request.getRequestURI());
                return true;
            }

            var userDetails = this.userDetailsService.loadUserByUsername(username);
            var isTokenValid = tokenService.findByToken(jwt).map(t -> !t.isRevoked() && !t.isExpired()).orElse(false);
            if (tokenService.isTokenValid(jwt, userDetails) && TRUE.equals(isTokenValid)) {
                var authToken = new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
                var secContext = SecurityContextHolder.createEmptyContext();
                authToken.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
                secContext.setAuthentication(authToken);
                SecurityContextHolder.setContext(secContext);
            } else {
                writeExceptionResponse(response, SC_UNAUTHORIZED, String.valueOf(UNAUTHORIZED), INVALID_TOKEN_MSG, request.getRequestURI());
                return true;
            }
        } catch (ExpiredJwtException e) {
            writeExceptionResponse(response, SC_FORBIDDEN, String.valueOf(FORBIDDEN), TOKEN_EXPIRED_MSG, request.getRequestURI());
            return true;
        } catch (Exception e) {
            writeExceptionResponse(response, SC_UNAUTHORIZED, String.valueOf(UNAUTHORIZED), ERROR_OCCURRED_MSG, request.getRequestURI());
            return true;
        }
        return false;
    }

    private boolean isPathInWhiteList(String requestPath) {
        var pathMatcher = new AntPathMatcher();
        for (var whiteListUrl : WHITE_LIST_URL) {
            if (pathMatcher.match(whiteListUrl, requestPath)) {
                return true;
            }
        }
        return false;
    }

    private void writeExceptionResponse(HttpServletResponse response,
                                        int status,
                                        String error,
                                        String message,
                                        String path) throws IOException {
        var exceptionResponse = ExceptionResponse.builder()
                .status(status)
                .error(error)
                .message(message)
                .errorDetail(AUTH_ERROR_MSG)
                .path(path)
                .timestamp(LocalDateTime.now())
                .build();

        response.setStatus(status);
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
        response.getWriter().write(objectMapper.writeValueAsString(exceptionResponse));
    }
}
