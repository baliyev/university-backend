package az.edu.asoiu.exception.classes;

public class IllegalOperationException extends RuntimeException {
    public IllegalOperationException(String message) {
        super(message);
    }

    public IllegalOperationException(String message, Exception exception) {
        super(message, exception);
    }
}
