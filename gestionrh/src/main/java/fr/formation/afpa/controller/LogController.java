package fr.formation.afpa.controller;

import javax.persistence.NoResultException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import fr.formation.afpa.domain.Compte;
import fr.formation.afpa.service.CompteService;

// https://www.javatpoint.com/spring-mvc-validation#:~:text=The%20Spring%20MVC%20Validation%20is,well%20as%20client%2Dside%20applications.

@Controller
public class LogController {

	CompteService cptservice;
	
	public LogController() {
		System.out.println("LogController default");
	}

	@Autowired
	public LogController(CompteService service) {
		System.out.println("LogController service");
		this.cptservice = service;
	}

	@GetMapping(path = "/")
	public String getHomeLogin(Model model) {
		model.addAttribute("compte", new Compte());
		return "login";
	}
	
	@GetMapping(path = "/loginlogout")
	public String getLogout(Model model) {
		model.addAttribute("compte", new Compte());
		return "login";
	}

	@PostMapping(path = "/loginaction")
	public String getLoginLogout(@ModelAttribute Compte compte, Model model, BindingResult result) {
		System.out.println(compte);
		try {
			if (cptservice.findByLogingAndPassword(compte.getLogin(), compte.getPassword()) != null) {
				return "accueil";
			} else {
				return "accueil";
			}
		} catch (NoResultException nre) {
			System.out.println("Aucun resultat");
			return "login";
		}

	}

}
