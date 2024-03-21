package ecom.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ecom.entity.Admin;
import ecom.repository.AdminRepository;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminRepository adminRepository;

    @Override
    public Admin registerAdmin(Admin admin) {
        // Check if the username is already taken
        if (adminRepository.findByUsername(admin.getUsername()) != null) {
            throw new IllegalArgumentException("Username already exists");
        }

        // Implement any other validation logic if required

        // Save the user to the database
        return adminRepository.save(admin);
    }

    @Override
    public Admin getAdminByUsername(String username) {
        return adminRepository.findByUsername(username);
    }

    @Override
    public boolean changePassword(String username, String newPassword) {
		  // Find the user by username
        Admin admin = adminRepository.findByUsername(username);
        if (admin == null) {
            throw new IllegalArgumentException("User not found");
        }

        // Verify the old password
        //if (!admin.getPassword().equals(oldPassword)) {
       //     return false;
       // }

        // Update the password
        admin.setPassword(newPassword);
        adminRepository.save(admin);

        return true;
    }
    
    @Override
    public Admin loginAdmin(String username, String password) {
        // Find the user by username
        Admin admin = adminRepository.findByUsername(username);
        if (admin == null) {
            throw new IllegalArgumentException("Invalid username or password");
        }

        // Verify the password
        if (!admin.getPassword().equals(password)) {
            throw new IllegalArgumentException("Invalid username or password");
        }

        return admin;
    }

	

}
