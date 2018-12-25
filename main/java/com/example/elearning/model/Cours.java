package com.example.elearning.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Cours {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int idcours;
	
	@NotNull
    private String intitule;
    
    private String descriptif;
    
    private String liencours;
    private String lienimg;
    
    
	public String getLienimg() {
		return lienimg;
	}

	public void setLienimg(String lienimg) {
		this.lienimg = lienimg;
	}

	public String getLienCours() {
		return liencours;
	}

	public void setLienCours(String lienCours) {
		this.liencours = lienCours;
	}

	public Cours(int idCours, String intitule, String descriptif) {
		super();
		this.idcours = idCours;
		this.intitule = intitule;
		this.descriptif = descriptif;
	}
	
	public int getIdCours() {
		return idcours;
	}
	public void setIdCours(int idCours) {
		this.idcours = idCours;
	}
	public String getIntitule() {
		return intitule;
	}
	public void setIntitule(String intitule) {
		this.intitule = intitule;
	}
	public String getDescriptif() {
		return descriptif;
	}
	public void setDescriptif(String descriptif) {
		this.descriptif = descriptif;
	}

	public Cours() {
		super();
	}

    


}