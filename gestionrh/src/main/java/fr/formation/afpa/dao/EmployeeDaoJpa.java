package fr.formation.afpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import fr.formation.afpa.domain.Employee;

@Repository
public class EmployeeDaoJpa implements IEmployeeDaoJpa {

	@PersistenceContext
	private EntityManager em;
	
	public EmployeeDaoJpa() {
	}
	
	public Employee findById(Integer id) {
		System.out.println("EMPLOYEE DAO JPA FIND BY ID");
		Employee emp = em.find(Employee.class, id);
		if (emp!=null) System.out.println("EMPLOYEE DAO JPA "+emp.toString());
		if (emp==null) System.out.println("EMPLOYEE DAO JPA EMP NULL");

		return emp;
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
		Employee emp = em.find(Employee.class, id);
		em.remove(emp);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> getManagers() {
		
		// SQL = select * from employee where emp_id in (select superior_emp_id from employee where superior_emp_id is not null);
		
		String hqlid = "select manager from Employee";
		 List<Integer> listmanagerid = em.createQuery(hqlid).getResultList();
		
		 String hql = "from Employee where emp_id in(:listmanagerid)";
		List<Employee> listmanager = em.createQuery(hql).setParameter("listmanagerid", listmanagerid).getResultList();
		 return listmanager;
	}

	@Override
	public List<Employee> getParameters() {
		String hqlid = "from Employee where manager is null";
		 @SuppressWarnings("unchecked")
		List<Employee> listparameters = em.createQuery(hqlid).getResultList();
		return listparameters;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> getSubs(Integer idmanager) {
		String hqlid = "from Employee where manager.empId = :idmanager";
		 List<Employee> listsubs = em.createQuery(hqlid).setParameter("idmanager", idmanager).getResultList();
		return listsubs;
	}

}
