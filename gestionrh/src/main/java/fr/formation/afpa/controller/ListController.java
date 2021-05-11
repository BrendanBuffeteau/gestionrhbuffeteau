package fr.formation.afpa.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.domain.EmployeesParam;
import fr.formation.afpa.service.EmployeeService;

// https://www.javatpoint.com/spring-mvc-validation#:~:text=The%20Spring%20MVC%20Validation%20is,well%20as%20client%2Dside%20applications.

@Controller
public class ListController {

	EmployeeService empservice;
	private static final Log log = LogFactory.getLog(ListController.class);
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

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


	@RequestMapping(value = "/parameters", method = RequestMethod.GET)
	public String getParameters(Model model) {
		List<Employee> listeparam = empservice.getParameters();
		EmployeesParam employeesParam = new EmployeesParam(listeparam);
		model.addAttribute("employeesParam", employeesParam);
		List<Employee> listemanager = empservice.getManagers();
		model.addAttribute("managers", listemanager);
		for (Employee e : listeparam) {
			System.out.println(e);
		}
		return "parameters";
	}
	
	@RequestMapping(value = "/saveparam", method = RequestMethod.POST)
	public String saveSubs(@ModelAttribute("employeesParam") EmployeesParam employeesparam) {
		System.out.println(employeesparam);
		System.out.println(employeesparam.getEmployeesparam());
		List<Employee> listesubsupdated = employeesparam.getEmployeesparam();
		
		if(null != listesubsupdated && listesubsupdated.size() > 0) {
			for (Employee e : listesubsupdated) {
				empservice.update(e);
			}
		}
		return "listeemployee";
	}
	
	@GetMapping(path = "/listemanager")
	public String getListManager(Model model) {
		List<Employee> listemanager = empservice.getManagers();
		model.addAttribute("managers", listemanager);
		return "listemanager";
	}

	@RequestMapping(value = "/listesub", method = RequestMethod.GET, params = { "idmanager" })
	public String getListeSub(Model model, @RequestParam(name = "idmanager", required = true) String idmanager) {
		Integer intmanager = Integer.parseInt(idmanager);
		List<Employee> listesub = empservice.getSubs(intmanager);
		model.addAttribute("listesubs", listesub);
		for (Employee e : listesub) {
			System.out.println(e);
		}
		return "subtitutes";
	}

	


	@GetMapping(path = "/getaddemployee")
	public String getAddEmployee(Model model) {
		model.addAttribute("employee", new Employee());
		List<Employee> listemanager = empservice.getManagers();
		model.addAttribute("employees", listemanager);
		return "addemployee";
	}

	@RequestMapping(path = "/addemployee", method = RequestMethod.POST)
	public String getSaveEmploye(@ModelAttribute Employee employee, @RequestParam Integer manager, @RequestParam Date startDate) {
		System.out.println("manager " + manager);
		System.out.println("startDate " +startDate);
		employee.setStartDate(new Date());

		if (manager != null) {
			Employee employe = empservice.findById(manager);
			employee.setManager(employe);
		}
		System.out.println(employee);
		empservice.save(employee);
		return "listeemployee";
	}


}
