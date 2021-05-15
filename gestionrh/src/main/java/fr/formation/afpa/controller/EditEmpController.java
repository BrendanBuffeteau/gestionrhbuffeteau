package fr.formation.afpa.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.formation.afpa.domain.Department;
import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.dto.EmployeeDto;
import fr.formation.afpa.dto.EmployeesWoChiefDto;
import fr.formation.afpa.service.DepartmentService;
import fr.formation.afpa.service.EmployeeService;

// https://www.javatpoint.com/spring-mvc-validation#:~:text=The%20Spring%20MVC%20Validation%20is,well%20as%20client%2Dside%20applications.

@Controller
public class EditEmpController {

	EmployeeService empservice;
	DepartmentService deptservice;
	@SuppressWarnings("unused")
	private static final Log log = LogFactory.getLog(EditEmpController.class);
	
	   @InitBinder
	    public void initBinder(WebDataBinder binder) {
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	        dateFormat.setLenient(false);
	        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	    }

	public EditEmpController() {
		System.out.println("EditEmpController default");
	}

	@Autowired
	public EditEmpController(EmployeeService service, DepartmentService deptservice) {
		System.out.println("EditEmpController service");
		this.empservice = service;
		this.deptservice= deptservice;
	}


	@RequestMapping(value = "/editemployee", method = RequestMethod.GET, params = { "empId" })
	public String getEditEmployee(Model model, @RequestParam(name = "empId", required = true) String empId) {
		Employee emp = new Employee();
		emp.setFirstName("Test name");
		Integer empIdint = Integer.parseInt(empId);
		for (int i=0;i<50;i++)System.out.println(empIdint);
		emp=empservice.findById(empIdint);
		EmployeeDto empdto = new EmployeeDto(emp);
		model.addAttribute("employee", empdto);
		
		List<Department> listedepartment = deptservice.getAll();
		model.addAttribute("departments",listedepartment);
		
		List<Employee> listemanager = empservice.getManagers();
		List<EmployeeDto> listemanagerdto = new ArrayList<EmployeeDto>();
		for (Employee e : listemanager) listemanagerdto.add(new EmployeeDto(e));
		model.addAttribute("managers", listemanagerdto);
		
		return "editemployee";
	}
	
	@RequestMapping(path = "/editemployeepost", method = RequestMethod.POST)
	public String getSaveEditEmploye(Model model,@ModelAttribute EmployeeDto employee, @RequestParam Integer manager, Date startDate, Integer department) {
		
		for (int i=0;i<50;i++)System.out.println(employee.toString());
		
		Employee emp = empservice.findById(employee.getEmpId());
		emp.setFirstName(employee.getFirstName());
		emp.setLastName(employee.getLastName());
		emp.setTitle(employee.getTitle());
		emp.setStartDate(startDate);
		
		if (manager != null) {
			Employee employe = empservice.findById(manager);
			emp.setManager(employe);
		}
		else if (manager == null){
			emp.setManager(null);
		}
		
		if (department != null) {
			Department dept = deptservice.findById(department);
			emp.setDepartment(dept);
		}

		empservice.update(emp);
		
		List<Employee> listemp = empservice.getAll();
		model.addAttribute("employees", listemp);
		return "listeemployee";
	}
	

	@RequestMapping(value = "/deleteemployeeliste", method = RequestMethod.GET, params = { "empId" })
	public String getDeleteEmployee(Model model, @RequestParam(name = "empId", required = true) String empId) {
		Integer empIdint = Integer.parseInt(empId);
		for (int i=0;i<50;i++)System.out.println(empIdint);
		empservice.deleteById(empIdint);
		
		List<Employee> listemp = empservice.getAll();
		model.addAttribute("employees", listemp);
		return "listeemployee";
	}
	
	
	@RequestMapping(value = "/deleteemployeeparam", method = RequestMethod.GET, params = { "empId" })
	public String getDeleteEmployeeParam(Model model, @RequestParam(name = "empId", required = true) String empId) {
		Integer empIdint = Integer.parseInt(empId);
		for (int i=0;i<50;i++)System.out.println(empIdint);
		empservice.deleteById(empIdint);
		
		List<Employee> listempwochief = empservice.getParameters();
		EmployeesWoChiefDto employeeswochiefdto = new EmployeesWoChiefDto();
		employeeswochiefdto.setListempwochiefNotDto(listempwochief);
		model.addAttribute("employeeswochiefdto", employeeswochiefdto);
		List<Employee> listemanager = empservice.getManagers();
		model.addAttribute("managers", listemanager);
		for (EmployeeDto e : employeeswochiefdto.getListempwochief()) {
			System.out.println(e.toString());
		}
		if (employeeswochiefdto.getListempwochief().isEmpty()) {
			for (int i=0;i<100;i++) System.out.println("LISTE VIDE");
		}
		return "parameters";
	}


}
