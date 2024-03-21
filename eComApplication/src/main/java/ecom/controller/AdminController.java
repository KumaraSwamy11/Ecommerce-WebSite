package ecom.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import ecom.entity.Admin;
import ecom.entity.User;
import ecom.service.AdminService;
import jakarta.servlet.http.HttpSession;



@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;


    @GetMapping("/admin/login")
    public String showLoginForm() {
        return "admin_login";
    }

    @PostMapping("/admin/login")
    public String loginAdmin(@ModelAttribute("admin") Admin admin, Model model) {
        try {
            Admin loggedInAdmin = adminService.loginAdmin(admin.getUsername(), admin.getPassword());
            // Successful login logic, redirect to the user dashboard or home page
            //return "redirect:/dashboard";
            return "admin_dashboard";
        } catch (IllegalArgumentException e) {
            // Invalid login attempt, add error message and return to the login page
            model.addAttribute("error", "Invalid username or password");
            return "admin_login";
        }
    
    }

    @GetMapping("/admin/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("admin", new User());
        return "admin_registration";
    }

    @PostMapping("/admin/register")
    public String registerUser(@ModelAttribute("admin") Admin admin) {
        adminService.registerAdmin(admin);
        return "redirect:/admin/login";
    }
    @GetMapping("/admin/changePassword")
    public String showChangePasswordForm(Model model) {
        model.addAttribute("admin", new Admin());
        return "change_password";
    }

    @PostMapping("/admin/changePassword")
    public String changePassword(@ModelAttribute("admin") Admin admin, HttpSession session) {
        String username = (String) session.getAttribute("admin");
        if (username == null) {
            return "redirect:/admin/login";
        }

        if (adminService.changePassword(username, admin.getNewPassword())) {
            return "redirect:/admin/dashboard?passwordChanged";
        } else {
            return "redirect:/admin/changePassword?error";
        }
    }

    @GetMapping("/admin/dashboard")
    public String showDashboard(HttpSession session) {
        if (session.getAttribute("admin") == null) {
            return "redirect:/admin/login";
        }
        return "admin_dashboard";
    }

    @GetMapping("/admin/logout")
    public String logoutAdmin(HttpSession session) {
        session.removeAttribute("admin");
        return "redirect:/admin/login";
    }
}
