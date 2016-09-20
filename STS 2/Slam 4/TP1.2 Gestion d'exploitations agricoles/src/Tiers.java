
public class Tiers {
	private String nom;
	private String adresse;
	private Commune laCommune;
	
	public Tiers(String nom, String adresse) {
		this.nom = nom;
		this.adresse = adresse;
	}

	public Tiers(String nom, String adresse, Commune uneCommune) {
		this.nom = nom;
		this.adresse = adresse;
		this.laCommune=uneCommune;
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

	
	public Commune getCommune() {
		return laCommune;
	}

	public void setCommune(Commune uneCommune) {
		this.laCommune = uneCommune;
	}

	@Override
	public String toString() {
		return "Tiers [nom=" + nom + ", adresse=" + adresse + ", commune="
				+ laCommune.toString() + "]";
	}

	

}
