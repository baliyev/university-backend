package az.edu.asoiu.dto.dto;

import az.edu.asoiu.entity.enums.Grade;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class StudentExamResultDto {
    private String studentFirstname;
    private String studentLastname;
    private String subjectTitle;
    private Integer examScore;
    private Grade grade;
}
