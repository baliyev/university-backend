package az.edu.asoiu.service;

import az.edu.asoiu.dto.dto.TokenDto;
import az.edu.asoiu.dto.req.AuthenticationReq;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.stereotype.Service;

import java.io.IOException;

import static az.edu.asoiu.util.Constants.BEARER;
import static org.springframework.http.HttpHeaders.AUTHORIZATION;

@Slf4j
@Service
@RequiredArgsConstructor
public class AuthenticationService {
    private final ObjectMapper objectMapper;
    private final TokenService tokenService;
    private final UserService userService;
    private final AuthenticationManager authenticationManager;

    public TokenDto authenticate(AuthenticationReq request) {
        authenticateUser(request.getUsername(), request.getPassword());
        var user = userService.loadUserByUsername(request.getUsername());
        var jwtToken = tokenService.generateToken(user);
        var refreshToken = tokenService.generateRefreshToken(user);
        tokenService.revokeAllUserTokens(user);
        tokenService.saveUserToken(user, jwtToken);
        return new TokenDto(BEARER, jwtToken, refreshToken);
    }

    public void refreshToken(HttpServletRequest request, HttpServletResponse response) throws IOException {
        final var authHeader = request.getHeader(AUTHORIZATION);
        final String refreshToken;
        final String userEmail;
        if (authHeader == null || !authHeader.startsWith(BEARER)) {
            return;
        }
        refreshToken = authHeader.substring(7);
        userEmail = tokenService.extractUsername(refreshToken);
        if (userEmail != null) {
            var user = userService.loadUserByUsername(userEmail);
            if (tokenService.isTokenValid(refreshToken, user)) {
                var accessToken = tokenService.generateToken(user);
                tokenService.revokeAllUserTokens(user);
                tokenService.saveUserToken(user, accessToken);
                var authResponse = new TokenDto(BEARER, accessToken, refreshToken);
                response.setContentType(MediaType.APPLICATION_JSON_VALUE);
                response.setStatus(HttpServletResponse.SC_OK);
                objectMapper.writeValue(response.getOutputStream(), authResponse);
            }
        }
    }

    private void authenticateUser(String username, String password) {
        UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(username, password);
        authenticationManager.authenticate(auth);
    }
}
