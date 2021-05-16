package fr.formation.afpa.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import fr.formation.afpa.domain.Compte;

@Repository
public class CompteDaoJpa implements ICompteDaoJpa {
	private EntityManagerFactory enf;
	private EntityManager em;
	
	public CompteDaoJpa() {
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

	public Compte findByLoginAndPassword(String login, String password) {
		System.out.println(password.isEmpty());
		if (password.isEmpty()) return null;
		System.out.println("findByLoginAndPassword "+login+" "+password);
		String hql = "from Compte where login = :login";
        Compte compte = (Compte) em.createQuery(hql).setParameter("login", login).getSingleResult();
		System.out.println("findByLoginAndPassword "+ compte + " "+login+ " "+password);

		if(compte != null ) {
			System.out.println(compte.getPassword()+" EQUALS "+password);
			if (compte.getPassword().equals(password))
			return compte;
		}
		else
			return null;
		return null;
	}


	public EntityManagerFactory getEnf() {
		return enf;
	}

	public EntityManager getEm() {
		return em;
	}
	
	

}
