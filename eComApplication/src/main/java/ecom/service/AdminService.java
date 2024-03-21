package ecom.service;

import ecom.entity.Admin;

public interface AdminService {
	Admin registerAdmin(Admin admin);
    Admin getAdminByUsername(String username);
    //boolean changeAdminPassword(String username, String oldPassword, String newPassword);
	Admin loginAdmin(String username, String password);
	boolean changePassword(String username, String newPassword);
}
