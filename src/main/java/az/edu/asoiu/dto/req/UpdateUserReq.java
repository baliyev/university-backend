package az.edu.asoiu.dto.req;

import az.edu.asoiu.entity.enums.Role;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UpdateUserReq {
    private String firstname;
    private String lastname;
    private String patronymic;
    private String email;
    private String phone;
    private LocalDate birthday;
    private Role role;
}
