package az.edu.asoiu.repository;

import az.edu.asoiu.entity.TokenEntity;
import az.edu.asoiu.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TokenRepository extends JpaRepository<TokenEntity, Long> {
    @Query(value = " select t from TokenEntity t where t.user = :user and (t.expired = false or t.revoked = false)")
    List<TokenEntity> findAllValidTokenByUser(UserEntity user);

    Optional<TokenEntity> findByToken(String token);
}
