package az.edu.asoiu.mapper;

import lombok.extern.slf4j.Slf4j;
import org.mapstruct.Named;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import static az.edu.asoiu.util.Constants.LOCAL_DATE_FORMATS;
import static az.edu.asoiu.util.Constants.LOCAL_DATE_TIME_FORMATS;

@Slf4j
@Component
public final class MapperHelper {

    @Named("parseStringToLocalDate")
    public LocalDate parseStringToLocalDate(String dateTime) {
        for (var format : LOCAL_DATE_FORMATS) {
            try {
                var formatter = DateTimeFormatter.ofPattern(format);
                return LocalDate.parse(dateTime, formatter);
            } catch (Exception e) {

            }
        }
        return null;
    }

    @Named("parseStringToLocalDateTime")
    public LocalDateTime parseStringToLocalDateTime(String dateTime) {
        for (var format : LOCAL_DATE_TIME_FORMATS) {
            try {
                var formatter = DateTimeFormatter.ofPattern(format);
                return LocalDateTime.parse(dateTime, formatter);
            } catch (Exception e) {

            }
        }
        return null;
    }

    @Named("parseDateTimeForIAMASRequirement")
    public String parseDateTimeForIAMASRequirement(String dateTime) {
        try {
            var date = LocalDate.parse(dateTime, DateTimeFormatter.ofPattern("dd.MM.yyyy"));
            return date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        } catch (Exception exception) {
            return dateTime;
        }
    }

}