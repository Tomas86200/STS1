import java.util.Date;


public class Eleve 
{
	private String nom;
	private String adresse;
	private String dNaissance;
	
	public Eleve (String no, String ad, String dn)

	{
		nom = no;
		adresse= ad;
		dNaissance = dn;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public String getdNaissance() {
		return dNaissance;
	}

	public void setdNaissance(String dNaissance) {
		this.dNaissance = dNaissance;
	}
	
}
