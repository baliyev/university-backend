package az.edu.asoiu.entity;

import az.edu.asoiu.entity.enums.Role;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.SQLRestriction;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.time.LocalDate;
import java.util.Collection;
import java.util.Set;

import static jakarta.persistence.EnumType.STRING;
import static java.lang.Boolean.TRUE;


@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "user")
@EqualsAndHashCode(callSuper = true)
@SQLRestriction(value = "status = 1")
public class UserEntity extends AbstractEntity implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;
    private String firstname;
    private String lastname;
    private String patronymic;
    private String password;
    private String username;
    private String email;
    private String phone;
    private LocalDate birthday;
    @Enumerated(STRING)
    private Role role;
    @OneToMany(mappedBy = "user")
    private Set<TokenEntity> tokens;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "faculty_id", nullable = false)
    public FacultyEntity faculty;

    @Builder.Default
    private boolean isAccountNonExpired = TRUE;
    @Builder.Default
    private boolean isAccountNonLocked = TRUE;
    @Builder.Default
    private boolean isCredentialsNonExpired = TRUE;
    @Builder.Default
    private boolean isEnabled = TRUE;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return role.getAuthorities();
    }

    @Override
    public String getUsername() {
        return username;
    }
}
