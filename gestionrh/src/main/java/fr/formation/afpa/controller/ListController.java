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

import fr.formation.afpa.domain.Compte;
import fr.formation.afpa.domain.Department;
import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.dto.EmployeeDto;
import fr.formation.afpa.dto.EmployeesWoChiefDto;
import fr.formation.afpa.service.DepartmentService;
import fr.formation.afpa.service.EmployeeService;

// https://www.javatpoint.com/spring-mvc-validation#:~:text=The%20Spring%20MVC%20Validation%20is,well%20as%20client%2Dside%20applications.

@Controller
public class ListController {

	EmployeeService empservice;
	DepartmentService deptservice;
	@SuppressWarnings("unused")
	private static final Log log = LogFactory.getLog(ListController.class);
	
	   @InitBinder
	    public void initBinder(WebDataBinder binder) {
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	        dateFormat.setLenient(false);
	        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	    }

	public ListController() {
		System.out.println("LogController default");
	}

	@Autowired
	public ListController(EmployeeService service, DepartmentService deptservice) {
		System.out.println("ListController service");
		this.empservice = service;
		this.deptservice= deptservice;
	}

	@GetMapping(path = "/listeemployee")
	public String getListEmployee(Model model) {
		List<Employee> listemp = empservice.getAll();
		model.addAttribute("employees", listemp);
		return "listeemployee";
	}
	
	@GetMapping(path = "/contact")
	public String getContact(Model model) {
		return "contact";
	}
	
	@GetMapping(path = "/accueil")
	public String getAcc(Model model) {
		return "accueil";
	}
	
	@GetMapping(path = "/who")
	public String getWho(Model model) {
		model.addAttribute("compte", new Compte());
		return "who";
	}


	@RequestMapping(value = "/parameters", method = RequestMethod.GET)
	public String getParameters(Model model) {
		List<Employee> listempwochief = empservice.getParameters();
		EmployeesWoChiefDto employeeswochiefdto = new EmployeesWoChiefDto();
		employeeswochiefdto.setListempwochiefNotDto(listempwochief);
		model.addAttribute("employeeswochiefdto", employeeswochiefdto);
		List<Employee> listemanager = empservice.getManagers();
		model.addAttribute("managers", listemanager);
		for (EmployeeDto e : employeeswochiefdto.getListempwochief()) {
			System.out.println(e.toString());
		}
		return "parameters";
	}
	
	@RequestMapping(value = "/saveparam", method = RequestMethod.POST)
	public String saveSubs(Model model,@ModelAttribute("employeeswochief") EmployeesWoChiefDto employeeswochiefdto) {
		for (int i=0;i<10;i++)System.out.println("saveSubs");
		List<EmployeeDto> listempwochiefupdated = employeeswochiefdto.getListempwochief();
		for (int i=0;i<10;i++)System.out.println("saveSubsPRINT");
		for (EmployeeDto e : listempwochiefupdated) {
			System.out.println(e.toString());
			System.out.println(e.toString());
			System.out.println(e.toString());
		}
		
		List<Employee> listemanager = empservice.getManagers();
		List<Employee> listempwochief = empservice.getParameters();
		
		for (int i=0;i<10;i++)System.out.println("saveSubsPRINT END");
		
		if(null != listempwochiefupdated && listempwochiefupdated.size() > 0) {
			for (EmployeeDto e : listempwochiefupdated) {
				Employee emp = null;
				for (int i=0;i<10;i++) System.out.println("NEW EMPLOYEE "+e.getEmpId());
				
				for (Employee ed : listempwochief) {
					if (ed.getEmpId().equals(e.getEmpId())){
						for (int i=0;i<10;i++)System.out.println("Same Id Found");
						emp=ed;
						for (int i=0;i<10;i++)System.out.println(emp.toString());
					}
				}
				for (int i=0;i<100;i++) System.out.println(emp==null);
				
				if (e.getManager()!=null) {
					Employee addmanager=null;
					for (Employee man : listemanager) {
						if (man.getEmpId().equals(e.getManager())) {
							addmanager=man;
						}
					}
					emp.setManager(addmanager);
				}
				if (emp!=null)	for (int i=0;i<100;i++) System.out.println(emp.toString());
				empservice.update(emp);
			}
		}
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

	@RequestMapping(value = "/listesub", method = RequestMethod.GET, params = { "idmanager" })
	public String getListeSub(Model model, @RequestParam(name = "idmanager", required = true) String idmanager) {
		for (int i=0;i<50;i++)System.out.println(idmanager);
		Integer intmanager = Integer.parseInt(idmanager);
		for (int i=0;i<50;i++)System.out.println(intmanager);
		List<Employee> listesub = empservice.getSubs(intmanager);
		model.addAttribute("listesubs", listesub);
		for (Employee e : listesub) {
			System.out.println(e);
		}
		return "subtitutes";
	}

	@GetMapping(path = "/getaddemployee")
	public String getAddEmployee(Model model) {
		model.addAttribute("employee", new EmployeeDto());
		List<Employee> listemanager = empservice.getManagers();
		model.addAttribute("employees", listemanager);
		
		List<Department> listedepartment = deptservice.getAll();
		model.addAttribute("departments",listedepartment);
		return "addemployee";
	}

	@RequestMapping(path = "/addemployee", method = RequestMethod.POST)
	public String getSaveEmploye(Model model,@ModelAttribute EmployeeDto employee, @RequestParam Integer manager, Date startDate, Integer department) {
		
		Employee emp = new Employee();
		
		emp.setFirstName(employee.getFirstName());
		emp.setLastName(employee.getLastName());
		emp.setTitle(employee.getTitle());
		
		if (startDate != null) {
		emp.setStartDate(startDate);
		}
		
		if (manager != null) {
			Employee employe = empservice.findById(manager);
			emp.setManager(employe);
		}
		
		if (department != null) {
			Department dept = deptservice.findById(department);
			emp.setDepartment(dept);
		}


		empservice.save(emp);
		
		List<Employee> listemp = empservice.getAll();
		model.addAttribute("employees", listemp);
		return "listeemployee";
	}
	

}
