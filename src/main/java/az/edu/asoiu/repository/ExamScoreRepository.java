package az.edu.asoiu.repository;

import az.edu.asoiu.entity.ExamScoreEntity;
import az.edu.asoiu.entity.projection.StudentExamProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExamScoreRepository extends JpaRepository<ExamScoreEntity, Long> {
    @Query(value = """
            SELECT
              u.id,
              u.firstname,
              u.lastname,
              s.title,
              es.score
            FROM exam_score es
            JOIN user u ON es.user_id = u.id
            JOIN subject_assign sa ON es.subject_assign_id = sa.id
            JOIN subject s ON sa.subject_id = s.id
            JOIN semester sem ON sa.semester_id  = sem.id
            WHERE es.score >= :score AND sa.subject_id = :subjectId
            ORDER BY es.score DESC
            """, nativeQuery = true)
    List<StudentExamProjection> findExamResultsByScoreAndSubject(
            @Param("score") int score,
            @Param("subjectId") Long subjectId);
}
