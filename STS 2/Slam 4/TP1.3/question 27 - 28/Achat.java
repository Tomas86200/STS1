import java.util.Date;

public class Achat {

	private float qteLivree;
	private float prixALUnite;
	private Date dateLivraison;
	private Fournisseur fournisseur;
	
	public Achat(float qteLivree, float prixALUnite, Date dateLivraison, Fournisseur fournisseur) {
		this.qteLivree = qteLivree;
		this.prixALUnite = prixALUnite;
		this.dateLivraison = dateLivraison;
		this.fournisseur=fournisseur;
	}

	public float getQteLivree() {
		return qteLivree;
	}

	public void setQteLivree(float qteLivree) {
		this.qteLivree = qteLivree;
	}

	public float getPrixALUnite() {
		return prixALUnite;
	}

	public void setPrixALUnite(float prixALUnite) {
		this.prixALUnite = prixALUnite;
	}

	public Date getDateLivraison() {
		return dateLivraison;
	}

	public void setDateLivraison(Date dateLivraison) {
		this.dateLivraison = dateLivraison;
	}
	
	public Fournisseur getFournisseur() {
		return fournisseur;
	}

	public void setFournisseur(Fournisseur fournisseur) {
		this.fournisseur = fournisseur;
	}

	@Override
	public String toString() {
		return "Achat [qteLivree=" + qteLivree + ", prixALUnite=" + prixALUnite
				+ ", dateLivraison=" + dateLivraison + ", fournisseur="
				+ fournisseur + "]";
	}
}
