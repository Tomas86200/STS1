import java.util.ArrayList;
import java.util.function.Consumer;


public class Entreprise
{
	
	private ArrayList <Representant> listeRepresentants;
	
	public Entreprise()
	{
		listeRepresentants = new ArrayList <Representant> ();
	}
	
	
	public void AjouterRepresentant(Representant Unrep)
	{
		listeRepresentants.add(Unrep);
	}
	public void SupprimerRepresentant(Representant Unrep)
	{
		listeRepresentants.remove(Unrep);
	}
	public void AfficherIdentiteRepresentant(Representant Unrep)
	{
		Unrep.AfficherCoordonnees();
		Unrep.AfficherSalaire();
	}
	public void AffichertoutRepresentant()
	{
		for(Representant Unrep: listeRepresentants)
		{
			Unrep.AfficherCoordonnees();
			Unrep.AfficherSalaire();
		}
	}
	public void AugmenterRepresentant(float taux)
	{
		for(Representant Unrep: listeRepresentants)
		{
			
			Unrep.AugmenterSalaire(taux);
		}
	}
	public void MajCARepresentant(int numRep, int montantVente)
	{	
		int i,nb;
		nb= listeRepresentants.size();
		i=0;
		while(i < nb && numRep != listeRepresentants.get(i).getNum())
		{
			i++;
		}
		if (i < nb)
		{
			listeRepresentants.get(i).CumulCa(montantVente);
		}
		else
		{
			System.out.println(numRep+ " n'existe pas");
		}
	}
	public void MajFraisRepresentant(int numRep,int MontantDepense)
	{
		int i,nb;
		nb= listeRepresentants.size();
		i=0;
		while(i < nb && numRep != listeRepresentants.get(i).getNum())
		{
			i++;
		}
		if (i < nb)
		{
			listeRepresentants.get(i).CumulFrais(MontantDepense);
		}
		else
		{
			System.out.println(numRep+ " n'existe pas");
		}
	}





}
