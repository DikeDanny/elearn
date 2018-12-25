package com.example.elearning.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.elearning.model.Utilisateur;

public interface RepoUtilisateur extends JpaRepository<Utilisateur, Integer> {
	Utilisateur findByPseudo(String Pseudo);
	Utilisateur findByMail(String Mail);
	Utilisateur findByPseudoAndPassHash(String Pseudo, String PassHash);
	
}
