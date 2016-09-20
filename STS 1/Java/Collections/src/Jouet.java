
public class Jouet 
{
	private int num;
	private String nom;
	private int age;
	
	public Jouet ( int vnum, String vnom, int vage)
	{
		num= vnum;
		nom=vnom;
		age=vage;
	}
	
	public void afficherjouet()
	{
		System.out.println(num +" : " + nom +"(" + age + " ans)");
	}
}
