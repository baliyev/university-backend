package az.edu.asoiu.exception.classes;

public class BlockedUserException extends RuntimeException {
    public BlockedUserException(String message) {
        super(message);
    }

    public BlockedUserException(String message, Exception exception) {
        super(message, exception);
    }
}
