package com.example.elearning.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.elearning.model.Cours;

public interface CoursRepository extends JpaRepository<Cours, Integer> {
	public Cours findByIntitule(String intitule);
	public Cours findByIdcours(int id);

}
