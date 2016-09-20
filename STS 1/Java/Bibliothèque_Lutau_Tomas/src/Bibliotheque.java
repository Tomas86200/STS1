
public class Bibliotheque 
{
	private Livre bibli[];
	private int Nblivre;
	
	public Bibliotheque()
	{
		bibli= new Livre[1000];
		Nblivre= 0;
		
	}
	public int donnenb()
	{
		return(Nblivre);
	}
	public int recherche(String nom)
	{
		int inf, sup, m;
		
		inf = 0 ;
		sup=Nblivre;
		m= (inf+sup)/2;
		while (inf < sup && bibli[m].donnenom().compareTo(nom) !=0)
		{
			if (bibli[m].donnenom().compareTo(nom) <0)
			{
				inf= m+1;
			}
			else
			{
				sup=m-1;
			}
			m=(inf+sup)/2;
		}
		if (bibli[m].donnenom().compareTo(nom)==0)
				{
					while (m > 0 && bibli[m-1].donnenom().compareTo(nom) == 0)
					{
						m= m-1;
					}
				}
		else
		{
			m=-1;
		}
		return(m);
	}
	public void tri()
	{
		int i,j;
		boolean trier;
		
		j=1;
		do
		{
			trier=true;
			for(i=0;i < Nblivre-j; i++)
			{
				if(bibli[i].donnenom().compareTo(bibli[i+1].donnenom())>0)
				{
					permute(i,i+1);
					trier=false;
				}
			
				if(bibli[i].donnenom().compareTo(bibli[i+1].donnenom()) == 0 && bibli[i].donnetitre().compareTo(bibli[i+1].donnetitre())>0)
				{
					permute(i,i+1);
					trier=false;
				}
			}
			j=j+1;
		}while (!trier);
	}
	public void permute(int i, int j)
	{
		Livre perm;
		
		perm=bibli[i];
		bibli[i]=bibli[i+1];
		bibli[i+1]=perm;
	}
	public Livre valeur(int i)
	{
		return(bibli[i]);
	}
	public void ajouter(Livre l)
	{
		Nblivre=Nblivre + 1;
		bibli[Nblivre-1]=l;
	}
}	
	


