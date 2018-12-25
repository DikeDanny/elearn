package com.example.elearning.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.bind.DatatypeConverter;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.UnsupportedEncodingException;
import java.security.*;

import com.example.elearning.model.Utilisateur;


@Controller
public class AppController {
	
	@RequestMapping("/")
	public String index()
	{
		System.out.println("AppCOntroller->index()");
		return "index";
	}
	
	@RequestMapping("/cours")
	public String cours () {
		System.out.println("AppCOntroller->cours()");
		return "cours";
	}
	
	@RequestMapping("/etablissements")
	public String etablissements () {
		System.out.println("AppCOntroller->etablissements()");
		return "etablissements";
	}
	
	@RequestMapping("/login")
	public String login () {
		System.out.println("AppCOntroller->login()");
		return "login";
	}
	
	@RequestMapping("/signup")
	public String signup () {
		System.out.println("AppCOntroller->signup()");
		return "signup";
	}
	
	@PostMapping("/traitementSignup")
	public String traitementSignup (HttpServletRequest request, HttpServletResponse response) throws GeneralSecurityException, UnsupportedEncodingException {
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("mail");
		String password = request.getParameter("pass");
		String repassword = request.getParameter("repass");
		String grade = request.getParameter("grade");
		String sexe = request.getParameter("sexe");
		
		if (nom.trim().isEmpty() || password.trim().isEmpty() || repassword.trim().isEmpty() || !password.matches(repassword)) {
			return "signup";
		}
		
		Utilisateur user = new Utilisateur();
		user.setNom(nom);
		user.setPrenoms(prenom);
		user.setMail(email);
		user.setPseudo(email);
		user.setGrade(grade);
		
		MessageDigest digest=MessageDigest.getInstance("SHA-256");
		byte[] hash=digest.digest(password.getBytes("UTF-8"));
		password=DatatypeConverter.printHexBinary(hash);
		
		user.setPassHash(password);
		
		request.setAttribute("user", user);
		
		
		System.out.println("AppCOntroller->traitement()");
		return "traitementSignup";
	}
	
	@RequestMapping("/lecteur")
	public String lecteur () {
		System.out.println("AppCOntroller->cours()");
		return "lecteur";
	}
	
	@RequestMapping("/dashbord")
	public String dashbord () {
		System.out.println("AppCOntroller->cours()");
		return "dashbord";
	}
	@GetMapping("/lecteurR")
	public String lecteurR (Model model,@RequestParam("liencours") String liencours) {
		model.addAttribute("liencours", liencours);
		System.out.println("je suis le lecteur");
		return "lecteur";
	}
	public String lecteurA(Model mod)
	{
		mod.addAttribute("liencours", "https://www.youtube.com/embed/MiSEn6a5W0Y");
		return "lecteur";
		
	}
	


}
