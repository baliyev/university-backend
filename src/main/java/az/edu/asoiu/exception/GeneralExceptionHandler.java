package az.edu.asoiu.exception;

import az.edu.asoiu.dto.shared.ExceptionResponse;
import az.edu.asoiu.exception.classes.*;
import io.jsonwebtoken.JwtException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.TypeMismatchException;
import org.springframework.context.support.DefaultMessageSourceResolvable;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingRequestHeaderException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.resource.NoResourceFoundException;

import java.time.LocalDateTime;
import java.util.stream.Collectors;

import static az.edu.asoiu.util.Constants.*;
import static org.springframework.http.HttpStatus.*;

@Slf4j
@RestControllerAdvice
public class GeneralExceptionHandler {


    @ExceptionHandler(HttpMessageNotReadableException.class)
    protected ResponseEntity<Object> handleHttpMessageNotReadable(
            HttpMessageNotReadableException ex, WebRequest request) {
        return getError(BAD_REQUEST, VALIDATION_FAILED_MSG, ex.getMostSpecificCause().getMessage(), ex, request);
    }

    @ExceptionHandler(TypeMismatchException.class)
    protected ResponseEntity<Object> handleTypeMismatch(
            TypeMismatchException ex, WebRequest request) {
        return getError(BAD_REQUEST, PARAM_TYPE_MISMATCH_MSG, ex.getMostSpecificCause().getMessage(), ex, request);
    }

    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    protected ResponseEntity<Object> handleHttpRequestMethodNotSupported(
            HttpRequestMethodNotSupportedException ex, WebRequest request) {
        return getError(METHOD_NOT_ALLOWED, UNSUPPORTED_METHOD_MSG, ex.getMessage(), ex, request);
    }

    @ExceptionHandler(UnprocessableEntityException.class)
    protected ResponseEntity<Object> handleUnprocessableEntity(
            UnprocessableEntityException ex, WebRequest request) {
        return getError(UNPROCESSABLE_ENTITY, null, ex.getMessage(), ex, request);
    }

    @ExceptionHandler(MissingServletRequestParameterException.class)
    protected ResponseEntity<Object> handleMissingServletRequestParameter(
            MissingServletRequestParameterException ex, WebRequest request) {
        return getError(BAD_REQUEST, VALIDATION_FAILED_MSG, ex.getLocalizedMessage(), ex, request);
    }

    @ExceptionHandler(MissingRequestHeaderException.class)
    protected ResponseEntity<Object> handleMissingRequestHeaderException(
            MissingRequestHeaderException ex, WebRequest request) {
        var errorDetail = ex.getLocalizedMessage();
        return getError(BAD_REQUEST, MISSING_REQUEST_HEADER_MSG, errorDetail, ex, request);
    }

    @ExceptionHandler(DataIntegrityViolationException.class)
    protected ResponseEntity<Object> handleHibernateConstraintViolationException(
            DataIntegrityViolationException ex, WebRequest request) {
        var errorDetail = ex.getLocalizedMessage();
        return getError(BAD_REQUEST, VALIDATION_FAILED_MSG, errorDetail, ex, request);
    }

    @ExceptionHandler(RecordNotFoundException.class)
    public ResponseEntity<Object> customerNotFoundExceptionHandler(RecordNotFoundException exception,
                                                                   WebRequest request) {
        var errorDetail = exception.getLocalizedMessage();
        return getError(NOT_FOUND, RECORD_NOT_FOUND_MSG, errorDetail, exception, request);
    }

    @ExceptionHandler(NoResourceFoundException.class)
    public ResponseEntity<Object> resourceNotFoundExceptionHandler(NoResourceFoundException exception,
                                                                   WebRequest request) {
        var errorDetail = exception.getLocalizedMessage();
        return getError(NOT_FOUND, RESOURCE_NOT_FOUND_MSG, errorDetail, exception, request);
    }

    @ExceptionHandler(BlockedUserException.class)
    public ResponseEntity<Object> blockedUserExceptionHandler(BlockedUserException exception,
                                                              WebRequest request) {
        var errorDetail = exception.getLocalizedMessage();
        return getError(UNAUTHORIZED, USER_BLOCKED_MSG, errorDetail, exception, request);
    }

    @ExceptionHandler(UserAlreadyExistException.class)
    public ResponseEntity<Object> customerNotFoundExceptionHandler(UserAlreadyExistException exception,
                                                                   WebRequest request) {
        var errorDetail = exception.getLocalizedMessage();
        return getError(CONFLICT, REGISTER_CONFLICT_MSG, errorDetail, exception, request);
    }

    @ExceptionHandler(IllegalOperationException.class)
    public ResponseEntity<Object> illegalOperationExceptionHandler(IllegalOperationException exception,
                                                                   WebRequest request) {
        String errorDetail = exception.getLocalizedMessage();
        return getError(BAD_REQUEST, ILLEGAL_OPERATION_MSG, errorDetail, exception, request);
    }

    @ExceptionHandler(BadCredentialsException.class)
    public ResponseEntity<Object> runtimeExceptionHandler(BadCredentialsException exception, WebRequest request) {
        String errorDetail = exception.getLocalizedMessage();
        return getError(UNAUTHORIZED, BAD_CREDENTIALS_MSG, errorDetail, exception, request);
    }

    @ExceptionHandler(JwtException.class)
    public ResponseEntity<Object> runtimeExceptionHandler(JwtException exception, WebRequest request) {
        String errorDetail = exception.getLocalizedMessage();
        return getError(UNAUTHORIZED, VALIDATION_FAILED_MSG, errorDetail, exception, request);
    }

    @ExceptionHandler(MethodArgumentNotValidException.class)
    protected ResponseEntity<Object> handleMethodArgumentNotValid(MethodArgumentNotValidException exception,
                                                                  WebRequest request) {
        var errorDetail = exception.getBindingResult().getAllErrors().stream()
                .map(DefaultMessageSourceResolvable::getDefaultMessage).collect(Collectors.joining("; "));
        return getError(BAD_REQUEST, VALIDATION_FAILED_MSG, errorDetail, exception, request);
    }

    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<Object> runtimeExceptionHandler(RuntimeException exception, WebRequest request) {
        String errorDetail = exception.getLocalizedMessage();
        return getError(INTERNAL_SERVER_ERROR, VALIDATION_FAILED_MSG, errorDetail, exception, request);
    }

    @ExceptionHandler(Exception.class)
    public final ResponseEntity<Object> handleAllExceptions(Exception ex, WebRequest request) {
        String errorDetail = ex.getMessage();
        return getError(INTERNAL_SERVER_ERROR, INTERNAL_ERROR_MSG, errorDetail, ex, request);
    }


    private ResponseEntity<Object> getError(HttpStatus status, String message, String errorDetail, Exception ex,
                                            WebRequest request) {
        log.error("{} : {}", ex.getClass().getSimpleName(), ex.getMessage());
        var errorResponse = ExceptionResponse.builder()
                .status(status.value())
                .error(status.getReasonPhrase())
                .message(message)
                .errorDetail(errorDetail)
                .path(request.getDescription(false))
                .timestamp(LocalDateTime.now()).build();

        return ResponseEntity.status(status).body(errorResponse);
    }
}
