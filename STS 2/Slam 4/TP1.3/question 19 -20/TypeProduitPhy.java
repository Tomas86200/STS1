
public class TypeProduitPhy {
	private String libelle;

	public TypeProduitPhy(String libelle) {
		this.libelle = libelle;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	@Override
	public String toString() {
		return "TypeProduitPhy [libelle=" + libelle + "]";
	}
	
}
