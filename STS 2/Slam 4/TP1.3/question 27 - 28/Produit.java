
public class Produit {

	private String unite;
	private String nom;

	public Produit(String unite, String nom) {
		this.unite = unite;
		this.nom = nom;
	}

	public String getUnite() {
		return unite;
	}

	public void setUnite(String unite) {
		this.unite = unite;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	@Override
	public String toString() {
		return "Produit [unite=" + unite + ", nom=" + nom + "]";
	}
	
}
