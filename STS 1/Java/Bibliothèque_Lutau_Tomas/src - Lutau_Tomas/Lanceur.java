
public class Lanceur 
{
	public void main()
	{
	Bibliotheque bib;
	int n,nb,i;
	String nom;
	
	bib=new Bibliotheque();
	bib.creation_biblio(bib);
	bib.tri();
	System.out.println("Il y a :" + bib.nb_auteur(bib) + "auteur(s) dans la bibliotheque.");
	System.out.println("Donner le nom: ");
	System.in(nom);
	n=bib.recherche(nom);
	if (n>-1)
		{
			nb=bib.nb_livre(bib,nom);
			for (i=n;i>(n+nb-1);)
			{
				System.out.println(bib.valeur(i).donnetitre());
			}
		}else System.out.println("Cet auteur n'existe pas");
	}
}
