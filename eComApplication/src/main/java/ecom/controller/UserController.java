package ecom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


import ecom.entity.User;
import ecom.service.UserService;

 
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    

    @GetMapping("/")
    public String showHome() {
        return "home";
    }

    @GetMapping("/user/login")
    public String showLoginForm() {
        return "user_login";
    }

    @PostMapping("/user/login")
    public String loginUser(@ModelAttribute("user") User user, Model model) {
        try {
            User loggedInUser = userService.loginUser(user.getUsername(), user.getPassword());
            // Successful login logic, redirect to the user dashboard or home page
            //return "redirect:/dashboard";
            return "dashboard";
        } catch (IllegalArgumentException e) {
            // Invalid login attempt, add error message and return to the login page
            model.addAttribute("error", "Invalid username or password");
            return "user_login";
        }
    
    }

    @GetMapping("/user/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        return "user_registration";
    }

    @PostMapping("/user/register")
    public String registerUser(@ModelAttribute("user") User user) {
        userService.registerUser(user);
        return "redirect:/user/login";
    }
}
