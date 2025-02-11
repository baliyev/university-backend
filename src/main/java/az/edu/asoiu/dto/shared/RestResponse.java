package az.edu.asoiu.dto.shared;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.http.HttpStatus;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RestResponse<T> {
    private HttpStatus status;
    private T data;

    public static <T> RestResponse<T> of(T data) {
        return new RestResponse<>(HttpStatus.OK, data);
    }

    public static <T> RestResponse<T> of(T data, HttpStatus status) {
        return new RestResponse<>(status, data);
    }
}
