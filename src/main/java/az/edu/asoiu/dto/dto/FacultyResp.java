package az.edu.asoiu.dto.dto;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class FacultyResp {
    private Long id;
    private String title;
    private LocalDateTime creationDate;
}
