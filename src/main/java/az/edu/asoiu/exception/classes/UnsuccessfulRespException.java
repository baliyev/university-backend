package az.edu.asoiu.exception.classes;

import lombok.Getter;

@Getter
public class UnsuccessfulRespException extends RuntimeException {

    private final Integer status;

    public UnsuccessfulRespException(String message, Integer status) {
        super(message);
        this.status = status;
    }
}
