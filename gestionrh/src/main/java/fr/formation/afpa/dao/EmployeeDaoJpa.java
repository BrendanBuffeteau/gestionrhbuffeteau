package fr.formation.afpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import fr.formation.afpa.domain.Employee;

public class EmployeeDaoJpa implements IEmployeeDaoJpa {
	private EntityManagerFactory enf;
	private EntityManager em;
	
	public EmployeeDaoJpa() {
		enf = Persistence.createEntityManagerFactory("unitBD");
		em=enf.createEntityManager();
	}
	
	public void beginTransaction() {
		em = enf.createEntityManager();
		em.getTransaction().begin(); //charge la transaction
	}
	
	public void commitTransaction() {
		em.getTransaction().commit();//fin de la transaction soit begin soit rollback
	}
	public void rollBackTransaction() {
		em.getTransaction().rollback();//fin de la transaction soit begin soit rollback
	}	
	public Employee findById(Integer id) {
		return em.find(Employee.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<Employee> findAll() {
		return em.createQuery("select emp from Employee emp").getResultList();
	}

	public Integer save(Employee e) {
		em.persist(e);
		return e.getEmpId();
	}

	public Employee update(Employee e) {
		return em.merge(e);
	}

	public void delete(Employee e) {
		em.remove(e);
	}

	public void deleteById(Integer id) {
		Employee emp = findById(id);
		delete(emp);
	}

}
