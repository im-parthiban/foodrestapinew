package in.OnlineFoodDeliveryApp.foodiesapi.service;

import in.OnlineFoodDeliveryApp.foodiesapi.io.CartRequest;
import in.OnlineFoodDeliveryApp.foodiesapi.io.CartResponse;

public interface CartService {
    CartResponse addToCart(CartRequest request);

    CartResponse getCart();

    void clearCart();

    CartResponse removeFromCart(CartRequest cartRequest);
}
