package com.example.elearning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.elearning.model.Cours;
import com.example.elearning.repository.CoursRepository;

@Controller
@RequestMapping("course")
public class CoursController {
	@Autowired
	private CoursRepository repo;
	List<Cours> mesCours;
	
	@RequestMapping("all")
	public String all(Model model)
	{
		mesCours= repo.findAll();
		model.addAttribute("mescours", mesCours);
		return "cours";
	}
	
	@RequestMapping("etablissements")
	public String eta()
	{
		return "etablissements";
	}
	
	@RequestMapping("lecteurA")
	public String lecteurA(Model mod)
	{
		mod.addAttribute("liencours", "https://www.youtube.com/embed/MiSEn6a5W0Y");
		return "lecteur";
		
	}
	

}
