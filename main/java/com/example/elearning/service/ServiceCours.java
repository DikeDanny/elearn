package com.example.elearning.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.elearning.model.Cours;
import com.example.elearning.repository.CoursRepository;

@Service
@Transactional
public class ServiceCours {
	@Autowired
	private CoursRepository repo;

	public ServiceCours(CoursRepository repo) {
		this.repo = repo;
	}
	public void saveCours( Cours cours)
	{
		repo.save(cours);
	}
	

}
