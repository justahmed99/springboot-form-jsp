package id.salt.identityform.repository;

import id.salt.identityform.entity.IdentityEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IdentityRepository extends JpaRepository<IdentityEntity, Integer> {

}
