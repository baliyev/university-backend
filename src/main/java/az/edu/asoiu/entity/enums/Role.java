package az.edu.asoiu.entity.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static az.edu.asoiu.entity.enums.Permission.*;

@Getter
@RequiredArgsConstructor
public enum Role {
    USER(
            Set.of(
                    USER_READ,
                    USER_UPDATE,
                    USER_DELETE,
                    USER_CREATE
            )
    ),
    STUDENT(
            Set.of(
                    STUDENT_READ,
                    STUDENT_UPDATE,
                    STUDENT_DELETE,
                    STUDENT_CREATE
            )
    ),
    TEACHER(
            Set.of(
                    TEACHER_READ,
                    TEACHER_UPDATE,
                    TEACHER_DELETE,
                    TEACHER_CREATE
            )
    ),
    MODERATOR(
            Set.of(
                    MODERATOR_CREATE,
                    MODERATOR_READ,
                    MODERATOR_DELETE,
                    MODERATOR_UPDATE
            )
    ),
    ADMIN(
            Set.of(
                    ADMIN_READ,
                    ADMIN_UPDATE,
                    ADMIN_DELETE,
                    ADMIN_CREATE
            )
    );

    private final Set<Permission> permissions;

    public Set<SimpleGrantedAuthority> getAuthorities() {
        return Stream.concat(
                permissions.stream().map(permission -> new SimpleGrantedAuthority(permission.getPermission())),
                Stream.of(new SimpleGrantedAuthority("ROLE_" + this.name()))
        ).collect(Collectors.toSet());
    }
}
