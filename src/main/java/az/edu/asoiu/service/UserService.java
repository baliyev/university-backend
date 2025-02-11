package az.edu.asoiu.service;

import az.edu.asoiu.dto.req.ChangePasswordReq;
import az.edu.asoiu.dto.req.CreateUserReq;
import az.edu.asoiu.dto.req.ResetUserPasswordReq;
import az.edu.asoiu.dto.req.UpdateUserReq;
import az.edu.asoiu.dto.resp.UserDetailResp;
import az.edu.asoiu.entity.UserEntity;
import az.edu.asoiu.exception.classes.IllegalOperationException;
import az.edu.asoiu.mapper.SourceDestinationMapper;
import az.edu.asoiu.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import static az.edu.asoiu.util.Constants.*;

@Slf4j
@Service
@RequiredArgsConstructor
public class UserService implements UserDetailsService {
    private final UserRepository repository;
    private final PasswordEncoder passwordEncoder;
    private final SourceDestinationMapper mapper;

    @Override
    public UserEntity loadUserByUsername(String username) throws UsernameNotFoundException {
        return repository.findByUsername(username).orElseThrow(() -> new UsernameNotFoundException(RECORD_NOT_FOUND_MSG));
    }

    public UserDetailResp getUserDetail(Authentication authentication) {
        var user = (UserEntity) authentication.getPrincipal();
        return UserDetailResp.builder()
                .id(user.getId())
                .username(user.getUsername())
                .firstname(user.getFirstname())
                .patronymic(user.getPatronymic())
                .lastname(user.getLastname())
                .patronymic(user.getPatronymic())
                .role(user.getRole().name())
                .build();
    }

    public void changePassword(ChangePasswordReq req, Authentication authentication) {
        var user = (UserEntity) authentication.getPrincipal();
        if (!passwordEncoder.matches(req.getCurrentPassword(), user.getPassword())) {
            throw new IllegalOperationException(ERROR_MSG_CURRENT_PASS_INVALID);
        }
        user.setPassword(passwordEncoder.encode(req.getNewPassword()));
        repository.save(user);
    }

    public UserEntity createUser(CreateUserReq request) {
        repository.findByUsername(request.getUsername()).ifPresent(user -> {
            throw new IllegalOperationException(REGISTER_CONFLICT_MSG);
        });
        var user = mapper.mapCreateUserReq2Entity(request);
        user.setPassword(passwordEncoder.encode(request.getPassword()));
        return repository.save(user);
    }

    public void resetPassword(String username, ResetUserPasswordReq request) {
        var user = loadUserByUsername(username);
        user.setPassword(passwordEncoder.encode(request.getNewPassword()));
        repository.save(user);
    }

    public void deactivate(String username) {
        var user = loadUserByUsername(username);
        user.setStatus(0);
        user.setEnabled(false);
        repository.save(user);
    }

    public void update(String username, UpdateUserReq request) {
        var user = loadUserByUsername(username);
        mapper.updateUserReq2Entity(request, user);
        repository.save(user);
    }
}

