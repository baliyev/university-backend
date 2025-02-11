package az.edu.asoiu.dto.req;

import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Objects;

import static az.edu.asoiu.util.Constants.ERROR_MSG_NEW_PASSES_NOT_MATCHING;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ChangePasswordReq {
    @NotNull
    private String currentPassword;
    @NotNull
    private String newPassword;
    @NotNull
    private String confirmationPassword;

    @AssertTrue(message = ERROR_MSG_NEW_PASSES_NOT_MATCHING)
    private boolean isValidPassword() {
        return Objects.equals(newPassword,confirmationPassword);
    }
}
