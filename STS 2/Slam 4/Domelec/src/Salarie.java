import java.util.Date;


public class Salarie {
	private String matricule, nom, prenom, adresse, telephone;
	private Date dateNaissance;
	
	
	public Salarie(String matricule, String nom, String prenom, String adresse,
			String telephone, Date dateNaissance) {
		this.matricule = matricule;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.telephone = telephone;
		this.dateNaissance = dateNaissance;
	}
	
	
}
