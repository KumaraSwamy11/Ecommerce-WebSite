package ecom.service;

import ecom.entity.User;

public interface UserService {
    User registerUser(User user);
    User getUserByUsername(String username);
    boolean changeUserPassword(String username, String oldPassword, String newPassword);
	User loginUser(String username, String password);
	
}