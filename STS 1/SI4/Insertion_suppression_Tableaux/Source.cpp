#include <iostream>
using namespace std;

#define MAX 100
typedef int TTAB[MAX];

bool recherche1(TTAB tablo, int n, int val)
{
	// tablo : entrée
	// n : entrée
	// val : entrée
	int i;
	bool trouve;

	i = 1;
	while ((i <= n) && (tablo[i] != val))
	{
		i++;
	}
	if (i>n)
	{
		trouve = false;
	}
	else
	{
		trouve = true;
	}
	return (trouve);
}
bool dichotomie(TTAB tablo, int n, int val)
{
	int inf, sup, milieu;
	bool trouve;

	inf = 1;
	sup = 1;
	milieu = (inf + sup) / 2;
	while ((inf <= sup) && (tablo[milieu] != val))
	{
		if (val > tablo[milieu])
		{
			inf = milieu + 1;
		}
		else
		{
			sup = milieu - 1;
		}
		milieu = (inf + sup) / 2;
	}
	if (inf>sup)
	{
		trouve = false;
	}
	else
	{
		trouve = true;
	}
	return (trouve);
}
void recherche(TTAB tablo, int n, int val)
{
	int i;
	bool trouve;

	trouve = false;
	for (i = 0; i < n; i++)
	{
		if (tablo[i] == val)
		{
			cout << val << "est présent à la case " << i;
			trouve = true;
		}
	}
	if (trouve = false)
	{
		cout << val << "n'existe pas";
	}
}
void recherche2(TTAB tablo, int n, int val)
{
	int i;

	i = 1;
	while ((i <= n) && (val>tablo[i]))
	{
		i++;
	}
	if ((i>n) || (val<tablo[i]))
	{
		cout << val << "n'existe pas dans le tableau";
	}
	else
	{
		do
		{
			cout << val << "est present dans la case " << i;
			i++;
		} while ((i>n) || (val<tablo[i]));
	}
}
void insertionnontrie(TTAB tab, int n, int elem)
{
	n++;
	tab[n] = elem;
}
void suppressionnontrie(TTAB tab, int n, int elem)
{
	int indsup, inddec;

	indsup = 1;
	while ((indsup <= n) && (tab[indsup] != elem))
	{
		indsup++;
	}
	if (indsup > n)
	{
		cout << elem << "n'existe pas";
	}
	else
	{
		for (inddec = inddec; inddec < n - 1; inddec++)
		{
			tab[inddec] = tab[inddec + 1];
		}
		n--;
	}
}
void insertiontrie(TTAB tab, int n, int elem)
{
	int indins, inddec;

	indins = 1;
	while ((indins <= n) && (tab[indins]<elem))
	{
		indins++;
	}
	n++;
	for (inddec = n - 1; inddec < indins; inddec++)
	{
		tab[inddec + 1] = tab[inddec];

		tab[indins] = elem;
	}
}

void main(void)
{
	cout << ""
}