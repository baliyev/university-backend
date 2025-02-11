package az.edu.asoiu.dto.resp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class UserDetailResp {
    private Long id;
    private String username;
    private String firstname;
    private String lastname;
    private String patronymic;
    private String role;
}
