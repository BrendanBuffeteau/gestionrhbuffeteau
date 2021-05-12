package fr.formation.afpa.dao;

import java.util.List;

import fr.formation.afpa.domain.Department;

public interface IDepartmentDaoJpa {

	void beginTransaction();

	void commitTransaction();

	// read
	Department findById(Integer id);

	List<Department> findAll();

	
}
