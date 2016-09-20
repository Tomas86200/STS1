
public class TabEleves 
{
	private Eleve classe[];
	private int nb;
	private void Permute (int x, int y)
	{
		Eleve el;
		el = classe[y];
		classe[x] = classe[y];
		classe[y] = el;
	}
	private void trier()
	{
			int i,j;
			boolean tri;
			
			j = 1;
			do
			{
				tri = true;
				for	(i=0; i < (nb - j); i++)
				{
					if (classe[i].Donnenote()> classe[i+1].Donnenote())
					{
						Permute(i, i+1);
						tri= false;
					}
				}
				j++;
			}while (!tri);
	}	

	public TabEleves()
	{
		classe = new Eleve [35];
		nb = 0;
	}
	public int Donnenb()
	{
		return (nb);
	}
	public void ajouter(Eleve ele)
	{
		if(nb < 35)
		{
		classe[nb] = ele;
		nb++;
		trier();
		}
	}
	public Eleve valeur(int i)
	{
		return classe[i];
		
	}
	public void supprimer(int i)
	{
		int pos;
		
		for (pos=i; pos < nb-1; pos++)
		{
			classe[pos]= classe[pos+1];
		}
		nb--;
	}
	public void afficher()
	{
		int i;
		
		for(i = 0 ; 1 < nb ; i++)
		{
			System.out.println(classe[i].Donnenom() + " : " + classe[i].Donnenote());
		}
	}

public String toString()
{
	int i;
	String chaine;
	chaine = "";
	
	for (i = 0; i<nb; i++)
	{
		chaine=chaine + classe[i].Donnenom() + " : "+ classe[i].Donnenote() + "/20 \n";
	}
	return chaine;
}
}
