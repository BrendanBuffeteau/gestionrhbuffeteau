package fr.formation.afpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


// https://www.javatpoint.com/spring-mvc-validation#:~:text=The%20Spring%20MVC%20Validation%20is,well%20as%20client%2Dside%20applications.

@Controller
public class LogController {

	@GetMapping(path="/")
	public String getHomeLogin() {
		return "login";
	}

@GetMapping(path="/loginlogout")
public String getLoginLogout() {
	return "login";
}

}
