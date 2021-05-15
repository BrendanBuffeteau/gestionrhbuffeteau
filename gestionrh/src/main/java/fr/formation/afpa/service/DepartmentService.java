package fr.formation.afpa.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.formation.afpa.dao.IDepartmentDaoJpa;
import fr.formation.afpa.domain.Department;

@Service
@Transactional
public class DepartmentService {

	@Autowired
	private IDepartmentDaoJpa dao;

	public IDepartmentDaoJpa getDao() {
		return dao;
	}

	public List<Department> getAll(){
		System.out.println("DepartmentService" + " " + "getAll");
		dao.beginTransaction();
		List<Department> list = dao.findAll();
		dao.commitTransaction();
		return list;
		
	}
	
	
	public Department findById(Integer empId) {
		System.out.println("DepartmentService" + " " + "findById");
		dao.beginTransaction();
		Department finded = dao.findById(empId);
		dao.commitTransaction();
		return finded;		
	}


	
}
