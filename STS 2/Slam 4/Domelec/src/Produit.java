import java.util.Date;


public class Produit {
	private int numeroProduit;
	private String nomProduit,descriptifProduit;
	private Date datePremiereFabrication;
	
	public Produit(int numeroProduit, String nomProduit,
			String descriptifProduit, Date datePremiereFabrication) {
		super();
		this.numeroProduit = numeroProduit;
		this.nomProduit = nomProduit;
		this.descriptifProduit = descriptifProduit;
		this.datePremiereFabrication = datePremiereFabrication;
	}
	
	
}
