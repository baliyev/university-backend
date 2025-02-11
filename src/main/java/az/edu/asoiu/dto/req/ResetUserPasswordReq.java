package az.edu.asoiu.dto.req;

import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.util.Objects;

import static az.edu.asoiu.util.Constants.ERROR_MSG_NEW_PASSES_NOT_MATCHING;

@Data
public class ResetUserPasswordReq {
    @NotNull
    private String newPassword;
    @NotNull
    private String confirmationPassword;

    @AssertTrue(message = ERROR_MSG_NEW_PASSES_NOT_MATCHING)
    private boolean isValidPassword() {
        return Objects.equals(newPassword, confirmationPassword);
    }
}
