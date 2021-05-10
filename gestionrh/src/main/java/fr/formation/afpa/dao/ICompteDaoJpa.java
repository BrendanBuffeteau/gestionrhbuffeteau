package fr.formation.afpa.dao;

import fr.formation.afpa.domain.Compte;


public interface ICompteDaoJpa {

	void beginTransaction();

	Compte findByLoginAndPassword(String login, String pwd);

	void commitTransaction();

}
