#include <iostream>
using namespace std;

#define MAX 200
typedef int TABENT[MAX];

void création(TABENT tab, int n)
{
	int i;

		for ( i = 0; i < n; i++)
		{
			cout << "Donner la valeur du " << i << "ème nombre : " << endl;
			cin >> tab[i];
		}

}
void affichage(TABENT tab, int n)
{
	int i;

	for ( i = 0; i < n; i++)
	{
		cout << tab[i];
	}

}
void permute(int&x, int&y)
{
	int perm;

	perm = x;
	x = y;
	y = perm;
}
void bulle(TABENT tab, int n)
{
	int i, j;
	bool tri;

	j = 1;
	do
	{
		tri = true;
		for ( i = 0; i < n; i++)
		{
			if (tab[i]>tab[i + 1])
			{
				permute(tab[i], tab[i + 1]);
				tri = false;
			}
		}
		j = j + 1;
	} while (!tri);
}
int nbpositif(TABENT tent, int maxent)
{
	int i, maxres;

	maxres = 0;
	for ( i = 0; i < maxent; i++)
	{
		if (tent[i]>0)
			maxres = maxres + 1;
	}
	return (maxres);
}
void main(void)
{
	TABENT table;
	int nb;

	cin >> nb;
	while (nb<1 || nb>MAX)
	{
		cout << "ERREUR: Le tableau ne peut contenir que " << MAX << "nombres " << endl;
		cout << "Combien d'entiers voulez-vous saisir ? ";
		cin >> nb;
	}
	création(table, nb);
	affichage(table, nb);
	bulle(table, nb);
	cout << "tablea après tri " << endl;
	affichage(table, nb);
	cout << "Le tableau contient " << nbpositif(table, nb) << " nombres positifs";
}