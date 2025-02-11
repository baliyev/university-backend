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
@Table(name = "subject")
@EqualsAndHashCode(callSuper = true)
@SQLRestriction(value = "status = 1")
public class SubjectEntity extends AbstractEntity {
    @Id
    @GeneratedValue(strategy = IDENTITY)
    private Long id;
    private String title;
    private String description;

    @OneToMany(mappedBy = "subject")
    private Set<SubjectAssignEntity> semesters = new HashSet<>();
}
