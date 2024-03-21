package ecom.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import ecom.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {
    User findByUsername(String username);
}
