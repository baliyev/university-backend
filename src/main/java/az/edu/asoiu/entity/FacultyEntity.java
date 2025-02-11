package az.edu.asoiu.entity;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.SQLRestriction;

import java.util.Set;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "faculty")
@EqualsAndHashCode(callSuper = true)
@SQLRestriction(value = "status = 1")
public class FacultyEntity extends AbstractEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long id;
    private String title;

    @OneToMany(mappedBy = "faculty")
    private Set<UserEntity> users;

}
