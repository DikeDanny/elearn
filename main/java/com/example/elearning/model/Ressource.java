package com.example.elearning.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Ressource {
	
	@Id
	private int idRessource;

   @NotNull
    private String nom;

   
    private String type;

    @NotNull
    private String lien;


	public Ressource(int idRessource, String nom, String type, String lien) {
		super();
		this.idRessource = idRessource;
		this.nom = nom;
		this.type = type;
		this.lien = lien;
	}


	public int getIdRessource() {
		return idRessource;
	}


	public void setIdRessource(int idRessource) {
		this.idRessource = idRessource;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getLien() {
		return lien;
	}


	public void setLien(String lien) {
		this.lien = lien;
	}

}