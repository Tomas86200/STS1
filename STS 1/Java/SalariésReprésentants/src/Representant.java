
public class Representant extends Salaries
{
	private int Ca;
	private int PlafondFrais;
	private int Frais;
	
	public Representant(int nu, String no, String pr, String ru, String vil, String fo,float sa, int pf)
	{
		super(nu,no,pr,ru,vil,fo,sa);
		Ca=0;
		PlafondFrais= pf;
		Frais=0;
	}
	public Representant(int nu, String no, String pr, String ru, String vil,float sa, int pf)
	{
		super(nu, no, pr, ru, vil, "Représentant", sa);
		Ca=0;
		PlafondFrais=pf;
		Frais=0;
	}
	public void AfficherSalaire()
	{
		float commission;
						
		
		if(Ca < 100000)
		{
			commission= 0.02f*(float)Ca;
		}
		else
		{
			if(Ca < 200000)
			{
				commission= 2000 + 0.04f*(float)Ca-100000;
			}
			else
			{
				commission= 6000+(0.06f*((float)Ca-200000));
			}
		}
		
		super.AfficherSalaire();
		System.out.println("CA : " + Ca + "   Commission : " + commission);
		System.out.println("Frais : " + Frais);
		
		if(Frais<PlafondFrais)
		{
			System.out.println("Vos frais ne dépassent pas le plafond.    Remboursement de frais:"+ Frais);
		}
		else
		{
			System.out.println("Vos frais dépassent le plafond.   Remboursement de frais:"+ PlafondFrais);
		}		
		
	}
	
	public void CumulCa(int MontantVente)
	{
		// Permet de cumuler au chiffre d'affaire le total des ventes
		Ca=Ca + MontantVente;
	}
	
	public void CumulFrais (int depense)
	{
		// Permet de cumuler aux frais le total des dépenses
		Frais=Frais + depense;
	}
	
	public void RemiseCumulsZero()
	{
		// Permet de remettre les frais et le chiffre d'affaire à zero.
		Frais=0;
		Ca=0;
	}

}