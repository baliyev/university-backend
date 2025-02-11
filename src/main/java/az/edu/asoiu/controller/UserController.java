package az.edu.asoiu.controller;

import az.edu.asoiu.dto.req.ChangePasswordReq;
import az.edu.asoiu.dto.resp.UserDetailResp;
import az.edu.asoiu.dto.shared.RestResponse;
import az.edu.asoiu.service.UserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import static org.springframework.http.HttpStatus.NO_CONTENT;
import static org.springframework.util.MimeTypeUtils.APPLICATION_JSON_VALUE;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/users", produces = APPLICATION_JSON_VALUE)
@Tag(name = "USER", description = "User management APIs")
public class UserController {
    private final UserService service;

    @GetMapping("/detail")
    @Operation(
            method = "GET",
            summary = "Get authenticated user details.",
            description = "Retrieve user information based on authentication token."
    )
    public ResponseEntity<RestResponse<UserDetailResp>> getCurrentUserDetail(Authentication authentication) {
        return ResponseEntity.ok(RestResponse.of(service.getUserDetail(authentication)));
    }

    @PatchMapping(value = "/change-password", consumes = APPLICATION_JSON_VALUE)
    @Operation(
            method = "PATCH",
            summary = "Change Password",
            description = "Change the password for the currently authenticated user."
    )
    public ResponseEntity<Void> changePassword(
            @RequestBody @Valid ChangePasswordReq req,
            Authentication authentication
    ) {
        service.changePassword(req, authentication);
        return ResponseEntity.status(NO_CONTENT).build();
    }
}
