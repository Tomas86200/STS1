
public class Commune {
	private String nom;
	private String codePostal;
	
	public Commune(String nom, String codePostal) {
		this.nom = nom;
		this.codePostal = codePostal;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getCodePostal() {
		return codePostal;
	}

	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}

	@Override
	public String toString() {
		return "Commune [nom=" + nom + ", codePostal=" + codePostal + "]";
	}
	
}
