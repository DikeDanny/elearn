package com.example.elearning.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.elearning.model.Utilisateur;
import com.example.elearning.repository.RepoUtilisateur;

@Service
@Transactional
public class ServiceUtilisateur {
	@Autowired
	private final RepoUtilisateur repoUtil;
	public ServiceUtilisateur(RepoUtilisateur repoUtil)
	{
		this.repoUtil=repoUtil;
	}
	public void saveUtilisateur(Utilisateur user)
	{
		repoUtil.save(user);
	}
}
