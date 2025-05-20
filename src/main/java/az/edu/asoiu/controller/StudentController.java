package az.edu.asoiu.controller;

import az.edu.asoiu.dto.dto.StudentExamResultDto;
import az.edu.asoiu.service.ExamScoreService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.Parameters;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static org.springframework.util.MimeTypeUtils.APPLICATION_JSON_VALUE;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/faculties", produces = APPLICATION_JSON_VALUE)
@Tag(name = "STUDENT", description = "Student management APIs")
public class StudentController {
    private final ExamScoreService examScoreService;

    @Operation(
            summary = "Get exam results by minimum score and subject",
            description = """
                    Returns all students whose exam score is ≥ the given score
                    for the specified subject.
                    
                    **Security:** Only users with one of these roles may call this:
                    - ADMIN
                    - MODERATOR
                    - TEACHER
                    """
    )
    @Parameters({
            @Parameter(name = "score", description = "Minimum exam score (inclusive)", required = true),
            @Parameter(name = "subjectId", description = "ID of the subject", required = true)
    })
    @ApiResponses({
            @ApiResponse(responseCode = "200", description = "List of matching student exam results"),
            @ApiResponse(responseCode = "403", description = "Forbidden – insufficient authority")
    })
    @PreAuthorize("hasAnyAuthority('ADMIN','MODERATOR','TEACHER')")
    @GetMapping("/exam-results")
    public List<StudentExamResultDto> getExamResults(
            @RequestParam int score,
            @RequestParam Long subjectId
    ) {
        return examScoreService.getStudentExamResults(score, subjectId);
    }
}
