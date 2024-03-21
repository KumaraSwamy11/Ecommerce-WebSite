package ecom.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ecom.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {
    Admin findByUsername(String username);
}
