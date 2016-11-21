
public class ProduitPhytoSanitaire extends Produit {
	
	private TypeProduitPhy typeProduitPhy;
		
	public ProduitPhytoSanitaire(String unite, String nom, TypeProduitPhy typeProduitPhy) {
		super(unite, nom);
		this.typeProduitPhy=typeProduitPhy;
	}

	public TypeProduitPhy getTypeProduitPhy() {
		return typeProduitPhy;
	}

	public void setTypeProduitPhy(TypeProduitPhy typeProduitPhy) {
		this.typeProduitPhy = typeProduitPhy;
	}

	@Override
	public String toString() {
		return "ProduitPhytoSanitaire [typeProduitPhy=" + typeProduitPhy + "]";
	}	

}
