package com.example.elearning.model;

import java.security.MessageDigest;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.DatatypeConverter;

@Entity
@Table(name="Utilisateurs")
@Inheritance(strategy=InheritanceType.JOINED)
public class Utilisateur {
		@Id
		@GeneratedValue(strategy= GenerationType.IDENTITY)
	 	private int idUser;
		
		@NotNull
	    private String pseudo;

		
	    private String passHash;

		
	    private String nom;

	    private String prenoms;
	    
	    @NotNull
	    private String mail;

	    private String grade;
	    

		public int getIdUser() {
			return idUser;
		}

		
		public void setIdUser(int nb) {
			this.idUser = nb;
		}


		public String getPseudo() {
			return pseudo;
		}


		public void setPseudo(String pseudo) {
			this.pseudo = pseudo;
		}


		public @NotNull String getPassHash() {
			return passHash;
		}


		public void setPassHash(@NotNull String passHash) {
			this.passHash = passHash;
		}


		public String getNom() {
			return nom;
		}


		public void setNom(String nom) {
			this.nom = nom;
		}


		public String getPrenoms() {
			return prenoms;
		}


		public void setPrenoms(String prenoms) {
			this.prenoms = prenoms;
		}
		
		public String getMail() {
			return mail;
		}
		
		public void setMail(String mail) {
			this.mail = mail;
		}


		public String getGrade() {
			return grade;
		}


		public void setGrade(String grade) {
			this.grade = grade;
		}


		@Override
		public String toString() {
			return "Utilisateur [idUser=" + idUser + ", pseudo=" + pseudo + ", passHash=" + passHash + ", nom=" + nom
					+ ", prenoms=" + prenoms + ", mail=" + mail + ", grade=" + grade + "]";
		}
		
		public static String generateId(int length)
		{
			    String chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"; // Tu supprimes les lettres dont tu ne veux pas
			    String pass = "";
			    for(int x=0;x<length;x++)
			    {
			       int i = (int)Math.floor(Math.random() * 62); // Si tu supprimes des lettres tu diminues ce nb
			       pass += chars.charAt(i);
			    }
			    return pass;
		}


		public Utilisateur(@NotNull String pseudo, @NotNull String passHash, @NotNull String nom,
				String prenoms, @NotNull String mail, String grade) {
			super();
			this.pseudo = pseudo;
			this.passHash = passHash;
			this.nom = nom;
			this.prenoms = prenoms;
			this.mail = mail;
			this.grade = grade;
		}
		
		public static String Hasher(String pass)
		{
			String hasher=pass;
			try {
				MessageDigest digest=MessageDigest.getInstance("SHA-256");
				byte[] hash=digest.digest(pass.getBytes("UTF-8"));
				hasher=DatatypeConverter.printHexBinary(hash);
			} catch (Exception e) {
				e.printStackTrace();
				
			}
			return hasher;
		}


		public Utilisateur() {
			super();
			// TODO Auto-generated constructor stub
		}



   

}