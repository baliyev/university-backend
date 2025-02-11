package az.edu.asoiu.service;

import az.edu.asoiu.dto.req.CreateUserReq;
import az.edu.asoiu.dto.req.ResetUserPasswordReq;
import az.edu.asoiu.dto.req.UpdateUserReq;
import az.edu.asoiu.dto.resp.UserResp;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ControlPanelService {
    private final UserService userService;
    private final TokenService tokenService;

    public UserResp createUser(CreateUserReq request) {
        var newUser = userService.createUser(request);
        return UserResp.builder()
                .id(newUser.getId())
                .creationDate(newUser.getCreatedDate())
                .username(newUser.getUsername()).build();
    }

    public void resetUserPassword(String username, ResetUserPasswordReq request) {
        userService.resetPassword(username, request);
    }

    public void deleteUser(String username) {
        userService.deactivate(username);
    }

    public void closeUserSessions(String username) {
        var user = userService.loadUserByUsername(username);
        tokenService.revokeAllUserTokens(user);
    }

    public void updateUser(String username, UpdateUserReq request) {
        userService.update(username, request);
    }
}
