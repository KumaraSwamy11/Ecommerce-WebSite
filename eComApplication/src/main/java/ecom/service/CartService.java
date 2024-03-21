package ecom.service;

import java.util.List;

import ecom.entity.CartItem;

public interface CartService {
    List<CartItem> getCartItems();
    void addToCart(Long productId, int quantity);
    void removeFromCart(Long cartItemId);
    void updateCartItemQuantity(Long cartItemId, int quantity);
}
