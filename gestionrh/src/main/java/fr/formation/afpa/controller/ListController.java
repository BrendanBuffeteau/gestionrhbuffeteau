package fr.formation.afpa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import fr.formation.afpa.domain.Compte;
import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.service.EmployeeService;

// https://www.javatpoint.com/spring-mvc-validation#:~:text=The%20Spring%20MVC%20Validation%20is,well%20as%20client%2Dside%20applications.

@Controller
public class ListController {

	EmployeeService empservice;
	
	public ListController() {
		System.out.println("LogController default");
	}

	@Autowired
	public ListController(EmployeeService service) {
		System.out.println("ListController service");
		this.empservice = service;
	}


	@GetMapping(path = "/listeemployee")
	public String getListEmployee(Model model) {
		List<Employee> listemp = empservice.getAll();
		model.addAttribute("employees", listemp);
		return "listeemployee";
	}
	
	@GetMapping(path = "/listemanager")
	public String getListManager(Model model) {
		List<Employee> listemanager = empservice.getManagers();
		model.addAttribute("managers", listemanager);
		return "listemanager";
	}

}
