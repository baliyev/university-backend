package az.edu.asoiu.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.SQLRestriction;

import static jakarta.persistence.GenerationType.IDENTITY;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "exam_score")
@EqualsAndHashCode(callSuper = true)
@SQLRestriction(value = "status = 1")
public class ExamScoreEntity  extends AbstractEntity {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private UserEntity user;

    @ManyToOne
    @JoinColumn(name = "subject_assign_id", nullable = false)
    private SubjectAssignEntity subjectAssign;

    private int score;
}
