
public class Lanceur 
{
	public static void main(String[] args)
	{
		Jouet voiturerouge= new Jouet(1,"Voiture rouge",3);
		Jouet tracteur= new Jouet(2,"Tracteur pas rapide",155);
		Jouet sabrolaser= new Jouet (3,"Sabre laser rose",1000000000);
		Jouet menottes= new Jouet(4,"Menottes",1);
		Jouet breton=new Jouet(5,"jouet breton pas très utile, moche et qui pue",19);		
		
		Collection<Jouet> JouetsTomas= new Collection<Jouet>();
		
		JouetsTomas.ajouterObjet(sabrolaser);
		JouetsTomas.ajouterObjet(menottes);
		JouetsTomas.ajouterObjet(voiturerouge);
		JouetsTomas.ajouterObjet(tracteur);
		JouetsTomas.ajouterObjet(breton);
		
		for()
		
	}
}
