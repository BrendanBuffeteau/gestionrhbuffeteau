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
	
}
