package az.edu.asoiu.dto.req;

import az.edu.asoiu.entity.enums.Role;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.time.LocalDate;

@Data
public class CreateUserReq {
    private String firstname;
    private String lastname;
    private String patronymic;
    private LocalDate birthDate;
    @NotNull(message = "username must not be null")
    private String username;
    @NotNull(message = "password must not be null")
    private String password;
    private Role role;
}
