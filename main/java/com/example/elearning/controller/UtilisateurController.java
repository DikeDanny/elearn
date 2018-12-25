package com.example.elearning.controller;

import java.security.MessageDigest;
import java.util.List;

import javax.xml.bind.DatatypeConverter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.elearning.model.Utilisateur;
import com.example.elearning.repository.RepoUtilisateur;

@Controller
@RequestMapping("/test")
public class UtilisateurController {

	@Autowired
	private RepoUtilisateur repo;
	List<Utilisateur> users;
	
	@GetMapping(path="/all")
	public @ResponseBody Iterable<Utilisateur> getAllUsers() {
		// This returns a JSON or XML with the users
		
		return repo.findAll();
		}
	
	@PostMapping("/ajouterUtilisateur")
	public String ajouterUtilisateur(@ModelAttribute("utilisateur") Utilisateur utilisateur)
	{
		String password=utilisateur.getPassHash();
		try {
			MessageDigest digest=MessageDigest.getInstance("SHA-256");
			byte[] hash=digest.digest(password.getBytes("UTF-8"));
			utilisateur.setPassHash(DatatypeConverter.printHexBinary(hash));
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		repo.save(utilisateur);
		return "redirect:/login";
	}
	
	@PostMapping("/log")
	public String login(@Param("Pseudo") String Pseudo, @Param("PassHash") String PassHash)
	{
		if(repo.findByPseudoAndPassHash(Pseudo, Utilisateur.Hasher(PassHash)).toString()!=null) {
			return "redirect:/dashbord";
			} 
		else {
			return "redirect:/error";
			}
	}
	
	
}
