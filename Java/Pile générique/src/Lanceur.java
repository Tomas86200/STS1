
public class Lanceur 
{
	public static void main(String[] args)
	{
		Pile<Integer>pile1= new Pile<Integer>();
		Pile<Character> pile2= new Pile<Character>();
		
		pile1.empiler(3);
		System.out.println("Sommet de la pile d'entiers :" + pile1.sommet());
		pile1.empiler(33);
		System.out.println("Sommet de la pile d'entiers :" + pile1.sommet());
		pile1.depiler();
		System.out.println("Sommet de la pile d'entiers :" + pile1.sommet());
		pile1.depiler();
		System.out.println("Sommet de la pile d'entiers :" + pile1.sommet());
		
		pile2.empiler('a');
		System.out.println("Sommet de la pile de charactères :" + pile2.sommet());
		pile2.empiler('b');
		System.out.println("Sommet de la pile de charactères :" + pile2.sommet());
		pile2.depiler();
		System.out.println("Sommet de la pile de charactères :" + pile2.sommet());
		pile2.depiler();
		System.out.println("Sommet de la pile de charactères :" + pile2.sommet());
	}
}
