package az.edu.asoiu.controller;

import az.edu.asoiu.dto.req.CreateUserReq;
import az.edu.asoiu.dto.req.ResetUserPasswordReq;
import az.edu.asoiu.dto.req.UpdateUserReq;
import az.edu.asoiu.dto.resp.UserResp;
import az.edu.asoiu.dto.shared.RestResponse;
import az.edu.asoiu.service.ControlPanelService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import static org.springframework.http.HttpStatus.ACCEPTED;
import static org.springframework.http.HttpStatus.CREATED;
import static org.springframework.util.MimeTypeUtils.APPLICATION_JSON_VALUE;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/admin-panel", produces = APPLICATION_JSON_VALUE)
@Tag(name = "ADMIN", description = "Admin management APIs")
public class AdminController {
    private final ControlPanelService service;

    @PreAuthorize("hasAnyRole('ADMIN','MODERATOR')")
    @PostMapping(value = "/users", consumes = APPLICATION_JSON_VALUE)
    @Operation(
            method = "POST",
            summary = "Create a new user",
            description = "Register a new user with the provided details."
    )
    public ResponseEntity<RestResponse<UserResp>> createUser(@RequestBody @Valid CreateUserReq request) {
        return ResponseEntity.status(CREATED).body(RestResponse.of(service.createUser(request), CREATED));
    }

    @PreAuthorize("hasAnyRole('ADMIN')")
    @PutMapping(value = "/users/{username}", consumes = APPLICATION_JSON_VALUE)
    @Operation(
            method = "PUT",
            summary = "Update user",
            description = "Update user information with the provided details."
    )
    public ResponseEntity<RestResponse<Void>> updateUser(@PathVariable("username") String username,
                                                         @RequestBody @Valid UpdateUserReq request) {
        service.updateUser(username, request);
        return ResponseEntity.status(ACCEPTED).build();
    }

    @PreAuthorize("hasAnyRole('ADMIN')")
    @PatchMapping(value = "/users/{username}/reset-password", consumes = APPLICATION_JSON_VALUE)
    @Operation(
            method = "PATCH",
            summary = "Reset user password",
            description = "Reset user password with the provided details."
    )
    public ResponseEntity<RestResponse<Void>> resetUserPassword(@PathVariable("username") String username,
                                                                @RequestBody @Valid ResetUserPasswordReq request) {
        service.resetUserPassword(username, request);
        return ResponseEntity.status(ACCEPTED).build();
    }

    @PreAuthorize("hasAnyRole('ADMIN')")
    @DeleteMapping(value = "/users/{username}")
    @Operation(
            method = "DELETE",
            summary = "Delete user",
            description = "Delete user with the provided details."
    )
    public ResponseEntity<RestResponse<Void>> deleteUser(@PathVariable("username") String username) {
        service.deleteUser(username);
        return ResponseEntity.status(ACCEPTED).build();
    }

    @PreAuthorize("hasAnyRole('ADMIN')")
    @PostMapping(value = "/users/{username}/close-sessions")
    @Operation(
            method = "POST",
            summary = "Close all sessions for a user",
            description = "Terminate all active sessions for a user."
    )
    public ResponseEntity<Void> closeUserAllSessions(@PathVariable("username") String username) {
        service.closeUserSessions(username);
        return ResponseEntity.ok().build();
    }
}
