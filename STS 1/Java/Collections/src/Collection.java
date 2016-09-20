
public class Collection <T>
{
	private int nb;
	private T collec[];
	
	@SuppressWarnings("unchecked")
	public Collection()
	{
		collec=(T[]) new Object[255];
		nb=0;
	}
	
	public T getObject (int n)
	{
		return collec[n];
	}
	
	public void ajouterObjet (T obj)
	{
		nb++;
		collec[nb]=obj;
	}
}
