#include <iostream>
using namespace std;

#define TABMAX 100
typedef int TTABLEAU[TABMAX];

int creation(TTABLEAU, int);
void affichage(TTABLEAU, int );
int somme(TTABLEAU, int);

void main()
{
	int Menu, n;
	char quitter;
	TTABLEAU table;
	quitter = 'n';
	do
	{
	cout << "Quitter 0\n, Exerice 1\n, Exercice 2\n, Exercice 3\n";
	cin >> Menu;
	switch (Menu)
	{

	case 0:
		cout << "Voulez-vous quitter ? (o/n)";
		cin >> quitter;
		while (quitter != 'o' && quitter != 'n')
		{
			cout << "Erreur: Voulez-vous quitter ? (o/n)";
			cin >> quitter;
		}
		break;

	case 1:
		cout << "Saisir n" << endl;
		cin >> n;
		creation(table, n);
		break;

	case 2:	
		affichage(table, n);
		break;

	case 3:
		cout << "La somme de tout les nombres est " << somme(table, n) << endl;
		break;

	default:
		cout << "Ce choix n'existe pas.";

		break;
	}
} while (quitter !='o');
	}

int creation(TTABLEAU table, int n)
{
	int i;
	for (i = 0; i < n; i++)
	{
		do
		{
			cout << "Donnez la valeur" << endl;
			cin >> table[i];
		} while (table[i] <= 0);
	}
	return n;
}

void affichage(TTABLEAU table, int n)
{
	int i;
	for (i = 0; i < n; i++)
	{
		cout << table[i] << " ";
	}
	cout << endl;
}

int somme(TTABLEAU table, int n)
{
	int i, operation;
	operation = 0;
	for (i = 0; i < n; i++)
	{
		operation = operation + table[i];
	}
	return operation;
}