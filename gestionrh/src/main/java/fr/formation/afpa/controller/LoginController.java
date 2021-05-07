package fr.formation.afpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fr.formation.afpa.domain.Compte;

// https://www.javatpoint.com/spring-mvc-validation#:~:text=The%20Spring%20MVC%20Validation%20is,well%20as%20client%2Dside%20applications.

@Controller
//@RequestMapping(path="/")
public class LoginController {

//	@GetMapping(path = "/")
//	public String getHome() {
//		return "login";
//	}
//
//
//	@PostMapping(value = "/login")
//	public String processForm(@ModelAttribute Compte compte, BindingResult result) {
//
//		 ValidationUtils.rejectIfEmpty(result, "login", "error.email");
//		 ValidationUtils.rejectIfEmpty(result, "password", "error.password");
//
//		System.out.println("LOGIN FORM " + compte);
//
//		if (result.hasErrors())
//			return "login";
//		else {
//
//		}
//		return "accueil";
//	}

}
