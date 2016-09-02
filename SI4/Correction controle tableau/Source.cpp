#include <iostream>
using namespace std;

#define MAX 100
typedef int TTABLEAU[MAX];


void remplir(TTABLEAU table, int n)
{
	int i;

	for ( i = 0; i < n; i++)
	{
		cout << "Saississez la valeur numéro " << i << endl;
		cin >> (table[i]);
	}
}

void affichage(TTABLEAU table, int n)
{
	int i;

	for ( i = 0; i < n; i++)
	{
		cout << table[i] << endl;
	}

}

void augmentation(TTABLEAU table, int n)
{
	int indice;

	for ( i = 0; i < n; i++)
	{
		table[indice] = table[indice] + 1;
	}
}

int somme(TTABLEAU table, int n)
{
	int i,sum;
	sum = 0;
	for ( i = 0; i < n; i++)
	{
		sum = sum + table[i];
	}
	return (sum);
}