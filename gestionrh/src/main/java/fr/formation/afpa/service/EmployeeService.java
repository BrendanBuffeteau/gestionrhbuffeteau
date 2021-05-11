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
		dao.beginTransaction();
		List<Employee> list = dao.findAll();
		dao.commitTransaction();
		return list;
		
	}
	
	public List<Employee> getManagers(){
		System.out.println("EmployeeService" + " " + "getManagers");
		dao.beginTransaction();
		List<Employee> list = dao.getManagers();
		dao.commitTransaction();
		return list;
		
	}
	
	public List<Employee> getParameters(){
		System.out.println("EmployeeService" + " " + "getParameters");
		dao.beginTransaction();
		List<Employee> list = dao.getParameters();
		dao.commitTransaction();
		return list;
		
	}
	
	public Integer save(Employee emp) {
		System.out.println("EmployeeService" + " " + "save");
		dao.beginTransaction();
		Integer id = dao.save(emp);
		dao.commitTransaction();
		return id;		
	}
	
	public Employee findById(Integer empId) {
		System.out.println("EmployeeService" + " " + "findById");
		dao.beginTransaction();
		Employee finded = dao.findById(empId);
		dao.commitTransaction();
		return finded;		
	}

	public List<Employee> getSubs(Integer idmanager) {
		System.out.println("EmployeeService" + " " + "getSubs");
		dao.beginTransaction();
		List<Employee> list = dao.getSubs(idmanager);
		dao.commitTransaction();
		return list;
	}
	
}
