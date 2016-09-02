
public class Bibliotheque 
{
	private Livre bibli;
	private int Nblivre;
	
	public void bibliotheque()
	{
		Nblivre= 0;
	}
	public int donnenb()
	{
		return(Nblivre);
	}
	public int recherche(String nom)
	{
		int inf, sup, m;
		
		inf=1;
		sup=Nblivre;
		m= (inf+sup)/2;
		while (inf < sup && bibli[m].donnenom() != nom)
		{
			if (bibli[m].donnenom()<nom)
			{
				inf= m+1;
			}
			else
			{
				sup=m-1;
			}
			m=(inf+sup)/2;
		}
		if (bibli[m].donnenom()=nom)
				{
					while (m > 1 && bibli[m-1].donnenom() == nom)
					{
						m= m-1;
					}
				}
		else
		{
			m=-1;
		}
		return(m);
	}
	public void tri()
	{
		int i,j;
		boolean trier;
		
		j=1;
		do
		{
			trier=true;
			for(i=1;i=Nblivre-j;)
			{
				if(bibli[i].donnenom()>bibli[i+1].donnenom() && bibli[i].donnetitre>bibli[i+1].donnetitre())
				{
					permute(i,i+1);
					trier=false;
				}
			}
			j=j+1;
		}while (trier);
	}
	public void permute(String i, String j)
	{
		Livre perm;
		
		perm=bibli[i];
		bibli[i]=bibli[i+1];
		bibli[i+1]=perm;
	}
	public Livre valeur(int i)
	{
		Return(bibli[i]);
	}
	public void ajouter(Livre l)
	{
		Nblivre=Nblivre + 1;
		bibli[Nblivre]=1;
	}
	

public void creation_biblio(Bibliotheque bib)
{
	int i,nb;
	String nom,titre;
	Livre l;
	
	System.out.println("Combien de livre : ");
	 System.in (nb);
	 for (i=1;i=nb;)
	 {
		 System.out.println("Auteur: ");
		 System.in (nom);
		 System.out.println("Titre: ");
		 System.in (titre);
		 l=new Livre(nom,titre);
		 bib.ajouter(l);
	 }	
}

 public int nb_auteur(Bibliotheque bib)
	 {
		int nbaut,nbliv,i;
		
		nbliv=bib.donnenb();
		nbaut=1;
		for (i=2, i=nbliv)
		{
			if (bib.valeur(i).donnenom()>bib.valeur(i-1).donnenom())
			{
				nbaut=nbaut+1;
			}
		}
		return(nbaut);
	 }
 public int nb_livre(Bibliotheque bib, String nom)
 	{
	 	int indice,nbl,nb;
	 	
	 	indice=bib.recherche(nom);
	 	nbl=bib.donnenb();
	 	if (indice>-1)
	 	{
	 		nb=1;
	 		indice=indice+1;
	 		while (indice <= nbl && bib.valeur(indice).donnenom()== bib.valeur(indice-1).donnenom())
	 		{
	 			nb=nb+1;
	 			indice=indice+1;
	 		}
	 		
	 	}else nb=0;
	 	return (nb);
 	}
 }
