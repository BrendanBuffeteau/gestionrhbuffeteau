package fr.formation.afpa.dao;

import java.util.List;

import fr.formation.afpa.domain.Employee;

public interface IEmployeeDaoJpa {
	
	//read
	Employee findById(Integer id);
	List<Employee> findAll();
	
	//create
	Integer save(Employee e);
	
	//update
	Employee update(Employee e);
	
	//delete
	void delete(Employee e);
	void deleteById(Integer id);

}
