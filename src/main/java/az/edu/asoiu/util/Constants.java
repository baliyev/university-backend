package az.edu.asoiu.util;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class Constants {
    public static final List<String> LOCAL_DATE_FORMATS = List.of(
            "yyyy-MM-dd",
            "MM/dd/yyyy",
            "dd.MM.yyyy"
    );

    public static final List<String> LOCAL_DATE_TIME_FORMATS = List.of(
            "dd.MM.yyyy HH:mm:ss",
            "yyyy-MM-dd HH:mm:ss",
            "yyyy-MM-dd'T'HH:mm:ss.SSSXXX"
    );

    public static final String[] WHITE_LIST_URL = {
            "/api/v1/authentication/**",
            "/v2/api-docs",
            "/v3/api-docs",
            "/v3/api-docs/**",
            "/swagger-resources",
            "/swagger-resources/**",
            "/configuration/ui",
            "/configuration/security",
            "/swagger-ui/**",
            "/webjars/**",
            "/swagger-ui.html",
            "/actuator/health/**"
    };
    public static final String ILLEGAL_OPERATION_MSG = "Illegal operation!";
    public static final String USER_BLOCKED_MSG = "User has been blocked!";
    public static final String VALIDATION_FAILED_MSG = "Validation failed!";
    public static final String INVALID_TOKEN_MSG = "Invalid token!";
    public static final String TOKEN_EXPIRED_MSG = "Authentication token expired!";
    public static final String RECORD_NOT_FOUND_MSG = "Record not found!";
    public static final String RECORD_NOT_FOUND_MSG_AZ = "Daxil edilən parametrlərə görə məlumat tapılmadı!";
    public static final String RESOURCE_NOT_FOUND_MSG = "Resource not found!";
    public static final String PARAM_TYPE_MISMATCH_MSG = "Parameter type is incorrect!";
    public static final String UNSUPPORTED_METHOD_MSG = "This http method is not allowed here!";
    public static final String INTERNAL_ERROR_MSG = "Request cannot be processed by the server!";
    public static final String ERROR_OCCURRED_MSG = "An error occurred";
    public static final String AUTH_ERROR_MSG = "Please check the token or obtain a new one.";
    public static final String MISSING_REQUEST_HEADER_MSG = "Request header is missing";
    public static final String AUTHENTICATION_TOKEN_IS_NOT_EXIST_MSG = "Authentication token does not exist failed to access model";
    public static final String REGISTER_CONFLICT_MSG = "User already created by this username!";
    public static final String ERROR_MSG_NEW_PASSES_NOT_MATCHING = "Daxil edilmiş yeni şifrələr eyni deyil!";
    public static final String BEARER = "Bearer ";
    public static final String ERROR_MSG_CURRENT_PASS_INVALID = "Daxil edilmiş cari şifrə düzgün deyil!";
    public static final String BAD_CREDENTIALS_MSG = "İstifadəçi adı və ya şifrə yanlışdır.";
}
