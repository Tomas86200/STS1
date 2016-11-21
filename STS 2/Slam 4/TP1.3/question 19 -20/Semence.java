

public class Semence extends Produit{
	private float qteParHectare;

	public Semence(String unite, String nom, float qteParHectare) {
		super(unite, nom);
		this.qteParHectare=qteParHectare;
	}
	
	public float getQteParHectare() {
		return qteParHectare;
	}

	public void setQteParHectare(float qteParHectare) {
		this.qteParHectare = qteParHectare;
	}
	
}
