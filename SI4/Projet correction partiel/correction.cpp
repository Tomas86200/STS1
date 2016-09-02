#include <iostream>
using namespace std;

#define MAX 100
typedef int TTABLEAU[MAX];

void remplir(TTABLEAU table, int n)
{
	int i;

	for ( i = 1; i <= n; i++)
	{
		cout << "Donner une valeur pour le " << i << "ème élément : ";
		cin >> table[i];
	}
}

void affichage(TTABLEAU table, int n)
{
	int i;

	for ( i = 1; i <= n; i++)
	{
		cout << table[i] << endl;
	}

}

void augmentation(TTABLEAU table, int n)
{
	int i;

	for ( i = 1; i <= n ; i++)
	{
		table[i] = table[i] + 1;
	}
}

int somme(TTABLEAU table, int n)
{
	int i, somme;

	for ( i = 1; i <= n; i++)
	{
		somme = somme + table[i];
	}
	return somme;
}

bool identique(TTABLEAU table, TTABLEAU tablo, int ntable, int ntablo)
{
	int i;
	bool idem;
	i = 1;
	idem = true;

	if (ntable != ntablo)
	{
		idem = false;
	}
	else
	{
		do
		{
			if (table[i] != tablo[i])
			{
				idem = false;
			}
			i = i + 1;
		} while ((idem==true)&&(i <= ntable));
	}
	return idem;
}

int nbfois(TTABLEAU table, int n, int nbrecherche)
{
	int i, nbfois;
	nbfois = 0;

	for ( i = 1; i <= n; i++)
	{
		if (table[i] == nbrecherche)
		{
			nbfois = nbfois + 1;
		}
	}
	return nbfois;
}