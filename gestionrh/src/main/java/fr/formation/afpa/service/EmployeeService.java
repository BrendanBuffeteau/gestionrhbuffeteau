package fr.formation.afpa.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.formation.afpa.dao.IEmployeeDaoJpa;
import fr.formation.afpa.domain.Employee;

@Service
@Transactional
public class EmployeeService {

	@Autowired
	private IEmployeeDaoJpa dao;

	public IEmployeeDaoJpa getDao() {
		return dao;
	}

	public List<Employee> getAll(){
		System.out.println("EmployeeService" + " " + "getAll");
		List<Employee> list = dao.findAll();
		return list;
		
	}
	
	public List<Employee> getManagers(){
		System.out.println("EmployeeService" + " " + "getManagers");
		List<Employee> list = dao.getManagers();
		return list;
		
	}
	
	public List<Employee> getParameters(){
		System.out.println("EmployeeService" + " " + "getParameters");
		List<Employee> list = dao.getParameters();
		return list;
	}
	
	
	public Integer save(Employee emp) {
		System.out.println("EmployeeService" + " " + "save");
		Integer id = dao.save(emp);
		return id;		
	}
	
	public Employee findById(Integer empId) {
		System.out.println("EmployeeService" + " " + "findById "+empId);
		Employee finded = dao.findById(empId);
		return finded;		
	}
	
	public void deleteById(Integer empId) {
		System.out.println("EmployeeService" + " " + "deleteById");
		dao.deleteById(empId);			
	}
	
	public void delete(Employee e) {
		System.out.println("EmployeeService" + " " + "delete");
		dao.delete(e);		
	}

	public List<Employee> getSubs(Integer idmanager) {
		System.out.println("EmployeeService" + " " + "getSubs");
		List<Employee> list = dao.getSubs(idmanager);
		return list;
	}

	public void update(Employee e) {
		System.out.println("EmployeeService" + " " + "update");
		dao.update(e);	
	}
	
}
