package in.OnlineFoodDeliveryApp.foodiesapi.service;

import in.OnlineFoodDeliveryApp.foodiesapi.io.UserRequest;
import in.OnlineFoodDeliveryApp.foodiesapi.io.UserResponse;

public interface UserService {
    UserResponse registerUser(UserRequest request);

    String findByUserId();
}
