package ecom.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import ecom.entity.CartItem;

public interface CartItemRepository extends JpaRepository<CartItem, Long> {
}
