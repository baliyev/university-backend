package az.edu.asoiu.service;

import az.edu.asoiu.dto.dto.StudentExamResultDto;
import az.edu.asoiu.entity.enums.Grade;
import az.edu.asoiu.repository.ExamScoreRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ExamScoreService {
    private final ExamScoreRepository repository;

    public List<StudentExamResultDto> getStudentExamResults(int minScore, Long subjectId) {
        var projections = repository.findExamResultsByScoreAndSubject(minScore, subjectId);
        return projections.stream()
                .map(p -> new StudentExamResultDto(
                        p.getFirstname(),
                        p.getLastname(),
                        p.getTitle(),
                        p.getScore(),
                        Grade.fromScore(p.getScore()))
                )
                .toList();
    }
}
