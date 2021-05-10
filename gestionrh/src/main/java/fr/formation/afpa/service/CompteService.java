package fr.formation.afpa.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.formation.afpa.dao.ICompteDaoJpa;
import fr.formation.afpa.domain.Compte;

@Service
@Transactional
public class CompteService {

	@Autowired
	private ICompteDaoJpa dao;

	public Compte findByLogingAndPassword(String login, String pwd) {
		System.out.println("CompteService" + " " + "findByLogingAndPassword");
		dao.beginTransaction();
		if (dao.findByLoginAndPassword(login, pwd) != null) {
			Compte compte = dao.findByLoginAndPassword(login, pwd);
			dao.commitTransaction();
			return compte;
		} else
			return null;
	}

	public ICompteDaoJpa getDao() {
		return dao;
	}

	public void setDao(ICompteDaoJpa dao) {
		this.dao = dao;
	}
	
	
}
