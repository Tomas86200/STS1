
public class Lanceur 
{
	public static void main(String[] args)
	{
		Classe DreamTeam;
		DreamTeam = new Classe();
		
		Eleve el1;
		el1=new Eleve ("Joey","Sur Terre","01/09/1997");
		
		Eleve el2;
		el2=new Eleve ("Pierre","Dans le néant","06/05/1997");
		
		Eleve el3;
		el3=new Eleve ("Laëtitia","Origines inconnues","02/04/1997");
		
		Eleve el4;
		el4=new Eleve ("Tomas","Sous Terre","03/03/1996");
		
		DreamTeam.AjouterEleve(el1);
		DreamTeam.AjouterEleve(el2);
		DreamTeam.AjouterEleve(el3);
		DreamTeam.AjouterEleve(el4);
		
		DreamTeam.AfficherTousLesEleves();
		System.out.println("\n");
		DreamTeam.SupprimerEleve(el3);
		DreamTeam.AfficherTousLesEleves();
		
		
	}
}
