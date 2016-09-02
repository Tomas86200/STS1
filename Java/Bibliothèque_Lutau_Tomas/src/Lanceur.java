import java.util.Scanner;


public class Lanceur 
{
	public static void main(String[]args)
	{
	Bibliotheque bib;
	int n,nb,i;
	String nom;
	
	Scanner sc;
	sc= new Scanner(System.in);
	
	bib=new Bibliotheque();
	creation_biblio(bib);
	bib.tri();
	System.out.println("Il y a :" + nb_auteur(bib) + "auteur(s) dans la bibliotheque.");
	System.out.println("Donner le nom: ");
	nom=sc.nextLine();
	
	
	n=bib.recherche(nom);
	if (n>-1)
		{
			nb=nb_livre(bib,nom);
			for (i=n;i<=(n+nb-1);i++)
			{
				System.out.println(bib.valeur(i).donnetitre());
			}
		}else System.out.println("Cet auteur n'existe pas");
	}
	
	public static void creation_biblio(Bibliotheque bib)
	{
		int i,nb;
		String nom,titre;
		Livre l;
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Combien de livre : ");
		 nb= sc.nextInt();
		 sc.nextLine();
		 for (i=0;i<nb;i++)
		 {
			 System.out.println("Auteur: ");
			 nom= sc.nextLine();
			 System.out.println("Titre: ");
			 titre= sc.nextLine();
			 l=new Livre(nom,titre);
			 System.out.println(l.donnetitre());
			 bib.ajouter(l);
		 }	
	}

	 public static int nb_auteur(Bibliotheque bib)
		 {
			int nbaut,nbliv,i;
			
			nbliv=bib.donnenb();
			nbaut=1;
			for (i=1; i<nbliv; i++)
			{
				if (bib.valeur(i).donnenom().compareTo(bib.valeur(i-1).donnenom())>0)
				{
					nbaut=nbaut+1;
				}
			}
			return(nbaut);
		 }
	 public static int nb_livre(Bibliotheque bib, String nom)
	 	{
		 	int indice,nbl,nb;
		 	
		 	indice=bib.recherche(nom);
		 	nbl=bib.donnenb();
		 	if (indice>-1)
		 	{
		 		nb=1;
		 		indice=indice+1;
		 		while (indice < nbl && bib.valeur(indice).donnenom().compareTo(bib.valeur(indice-1).donnenom()) == 0)
		 		{
		 			nb=nb+1;
		 			indice=indice+1;
		 		}
		 		
		 	}else nb=0;
		 	System.out.println(nb);
		 	return (nb);
	 	}
	 }
