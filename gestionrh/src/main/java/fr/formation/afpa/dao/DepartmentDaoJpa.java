package fr.formation.afpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.springframework.stereotype.Repository;

import fr.formation.afpa.domain.Department;
import fr.formation.afpa.domain.Employee;

@Repository
public class DepartmentDaoJpa implements IDepartmentDaoJpa {
	private EntityManagerFactory emf;
	private EntityManager em;
	
	public DepartmentDaoJpa() {
		emf = Persistence.createEntityManagerFactory("unitBD");
		em=emf.createEntityManager();
	}
	
	public void beginTransaction() {
		em = emf.createEntityManager();
		em.getTransaction().begin(); //charge la transaction
	}
	
	public void commitTransaction() {
		em.getTransaction().commit();//fin de la transaction soit begin soit rollback
	}
	public void rollBackTransaction() {
		em.getTransaction().rollback();//fin de la transaction soit begin soit rollback
	}	
	public Department findById(Integer id) {
		return em.find(Department.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<Department> findAll() {
		return em.createQuery("from Department deptId").getResultList();
	}

}
