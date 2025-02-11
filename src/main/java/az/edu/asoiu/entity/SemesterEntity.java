package az.edu.asoiu.entity;


import az.edu.asoiu.entity.enums.SemesterType;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.SQLRestriction;

import java.util.Set;

import static jakarta.persistence.GenerationType.IDENTITY;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = true)
@SQLRestriction(value = "status = 1")
@Table(name = "semester", uniqueConstraints = {
        @UniqueConstraint(columnNames = {"year","type"})
})
public class SemesterEntity extends AbstractEntity {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Long id;
    @Column(nullable = false)
    private int year;
    @Column(nullable = false)
    @Enumerated(EnumType.STRING)
    private SemesterType type;

    @OneToMany(mappedBy = "semester")
    private Set<SubjectAssignEntity> semesterSubjects;
}
