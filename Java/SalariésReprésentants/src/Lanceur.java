import java.util.Scanner;
public class Lanceur 
{

	public static void main(String[] args) 
	{
		int num;
		String nom;
		String prenom;
		String rue;
		String ville;
		String fonction;
		float salaire;
		float TauxPourcentage;
		String NouvNom;
		String NouvRue;
		String NouvVille;
		int PlafondFrais;
		
		
		
		Scanner sc;
		sc=new Scanner(System.in);
		
		num=21200;
		nom="DUPONT";
		prenom="Fr�d�ric";
		rue="Rue Guy Chauvet";
		ville="Loudun";
		salaire= 6000;
		PlafondFrais= 10000;
		
		/*System.out.println("Nom du salari� :");
		nom= sc.nextLine();
		System.out.println("Pr�nom du salari� :");
		prenom=sc.nextLine();
		System.out.println("rue :");
		rue=sc.nextLine();
		System.out.println("ville :");
		ville=sc.nextLine();
		System.out.println("fonction :");
		fonction=sc.nextLine();
		System.out.println("salaire :");
		salaire=sc.nextFloat();*/
		
		Entreprise Ninja;
		Ninja = new Entreprise();
	
		Representant sal0;
		sal0= new Representant(1, "P�", "Tu", "Rue du chinois", "Ombre", 2000, 12000);
		Ninja.AjouterRepresentant(sal0);
		
		Representant sal1;
		sal1= new Representant(2, "Pik", "Ki", "Dojo Guy Chauve", "Quelque part en Chine", 3000, 11000);
		Ninja.AjouterRepresentant(sal1);
		
		Representant sal2;
		sal2= new Representant(3, "Chie", "S�", "Resto Guy Chauvet", "Dans un grand mur", 4000, 10000);
		Ninja.AjouterRepresentant(sal2);
		
		Ninja.AffichertoutRepresentant();
		System.out.println("\n");
		Ninja.AugmenterRepresentant(-200);
		System.out.println("\n");
		Ninja.AffichertoutRepresentant();
		System.out.println("\n");
		Ninja.MajCARepresentant(3, 500);
		Ninja.MajFraisRepresentant(3, 20);
		Ninja.AfficherIdentiteRepresentant(sal2);
		System.out.println("\n");
		Ninja.MajCARepresentant(12, 100000);
		Ninja.MajFraisRepresentant(12, 100000);
		Ninja.SupprimerRepresentant(sal0);
		Ninja.AffichertoutRepresentant();
		
		
		/*sal.AfficherCoordonnees();
		sal.AfficherSalaire();*/
		
		/*System.out.println("Taux d'augmentation du salaire :");
		TauxPourcentage=sc.nextFloat();
		sal.AugmenterSalaire(TauxPourcentage);
		
		sal.AfficherSalaire();
		
		System.out.println("Nouveau nom du salari� ?");
		sc.next();
		NouvNom=sc.nextLine();
		sal.ModifierNom (NouvNom);
		
		System.out.println("Nouvelle rue :");
		NouvRue=sc.nextLine();
		System.out.println("Nouvelle ville :");
		NouvVille=sc.nextLine();
		sal.ModifierAdresse(NouvRue, NouvVille);
		
		sal.AfficherCoordonnees();
		*/
		
		/*System.out.println("Donner le montant des ventes r�alis� :");
		sal.CumulCa(sc.nextInt());
		
		sc.nextLine();
		
		System.out.println("Indiquez les d�penses effectu�es :");
		sal.CumulFrais(sc.nextInt());
		
		sc.nextLine();
		
		sal.AfficherSalaire();*/
		

	}

}
