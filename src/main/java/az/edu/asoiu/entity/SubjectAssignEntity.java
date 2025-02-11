package az.edu.asoiu.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.SQLRestriction;

import java.util.HashSet;
import java.util.Set;

import static jakarta.persistence.GenerationType.IDENTITY;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "subject_assign")
@EqualsAndHashCode(callSuper = true)
@SQLRestriction(value = "status = 1")
public class SubjectAssignEntity extends AbstractEntity {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "semester_id", nullable = false)
    private SemesterEntity semester;
    @ManyToOne
    @JoinColumn(name = "subject_id", nullable = false)
    private SubjectEntity subject;

    @ManyToMany
    @JoinTable(
            name = "subject_assign_x_user",
            joinColumns = { @JoinColumn(name = "subject_assign_id") },
            inverseJoinColumns = { @JoinColumn(name = "user_id") }
    )
    private Set<UserEntity> users = new HashSet<>();


    @Column(nullable = false)
    private int hour;
    @Column(nullable = false)
    private int credit;


    @OneToMany(mappedBy = "subjectAssign")
    private Set<ExamScoreEntity> exams = new HashSet<>();
}
