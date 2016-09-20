
public class Pile <T>
{
	private int nb;
	private T contenu[];
	
	@SuppressWarnings("unchecked")
	public Pile()
	{
		contenu= (T[]) new Object[1000];
		nb=0;
	}
	
	public void empiler(T n)
	{
		if (nb < 1000)
		{
			nb++;
			contenu[nb] = n;
		}
		else
		{
			System.out.println("Pile pleine");
		}
	}
	
	public void depiler()
	{
		if(nb>0)
		{	
			nb--;
		}	
	}
	
	public T sommet()
	{
		return contenu[nb];
	}
	
}
