package az.edu.asoiu.controller;

import az.edu.asoiu.dto.dto.TokenDto;
import az.edu.asoiu.dto.req.AuthenticationReq;
import az.edu.asoiu.service.AuthenticationService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

import static org.springframework.util.MimeTypeUtils.APPLICATION_JSON_VALUE;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/authentication", produces = APPLICATION_JSON_VALUE)
@Tag(name = "AUTHENTICATION", description = "Authentication management APIs")
public class AuthenticationController {

    private final AuthenticationService service;

    @PostMapping("/login")
    @Operation(
            method = "POST",
            summary = "User Authentication",
            description = "Authenticate a user based on provided credentials. "
                          + "Returns authentication details if successful.")
    public ResponseEntity<TokenDto> authenticate(@RequestBody @Valid AuthenticationReq request) {
        return ResponseEntity.ok(service.authenticate(request));
    }

    @PostMapping("/refresh-token")
    @Operation(
            method = "POST",
            summary = "Refresh token",
            description = "Refresh the authentication token using the provided request. "
                          + "Returns new authentication details if successful."
    )
    public void refreshToken(HttpServletRequest request, HttpServletResponse response) throws IOException {
        service.refreshToken(request, response);
    }
}
