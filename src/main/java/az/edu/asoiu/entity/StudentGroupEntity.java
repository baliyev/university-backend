package az.edu.asoiu.entity;


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
@Table(name = "student_group")
@EqualsAndHashCode(callSuper = true)
@SQLRestriction(value = "status = 1")
public class StudentGroupEntity extends AbstractEntity{
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = IDENTITY)
    private Long id;
    @Column(nullable = false)
    private String title;

    @OneToMany(mappedBy = "group")
    private Set<UserEntity> students;
}
