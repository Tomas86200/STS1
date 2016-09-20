import java.util.Scanner;
public class Lanceur
{
	public static void main(String[] args)
	{		
		TabEleves classe;
		Eleve ele;
		char rep;
		Scanner scn;
		
		scn=new Scanner(System.in);
		classe= new TabEleves();
		
		resultats(classe);
		do
		{
			ele= saisirEleve();
			classe.ajouter(ele);
			do
			{
				System.out.println(" \nVoulez vous saisir d'autres élèves ? ");
				rep= scn.nextLine().charAt(0);
			}while ((rep != 'o') && (rep != 'O') && (rep !='n') && (rep != 'N'));
		}while ((classe.Donnenb()<35)&&(rep != 'n')&&(rep != 'N'));
		scn.close();
		resultats(classe);
				
	}

	public static Eleve saisirEleve()
	{
		Eleve el;
		Scanner sc;
		String nom;
		float note;
		
		
		sc = new Scanner (System.in);
		
		System.out.println("Entrez un nom : ");
		nom = sc.nextLine();
		System.out.println("Entrez une note : ");
		note= sc.nextFloat();
		
		
		el = new Eleve(nom,note);
		
		return el;
	}
	public static void resultats (TabEleves classe)
	{
		int i, nb;
		float somme;
		Eleve ele;
		
		nb= classe.Donnenb();
		if (nb >0)
		{
			ele=classe.valeur(nb-1);
			System.out.println("\nMeilleure note : "+ ele.Donnenote() + "/20");
		
		
			ele=classe.valeur(0);
			System.out.println("Moins bonne note : "+ ele.Donnenote() + "/20");
			
			
			somme= 0;
			for(i = 0 ; i < classe.Donnenb() ; i++)
			{
				ele = classe.valeur(i);
				somme = somme + classe.valeur(i).Donnenote();
			}
			System.out.println("\nMoyenne : " + somme/classe.Donnenb() + "/20");
		}	
		else
		{
			System.out.println("\nAucun Eleve");
		}
	}
}
