#include <iostream>
using namespace std;

#define Nbmax 100
typedef int TENTIER[Nbmax];

void creation(TENTIER tab, int n)
{
	int i;
	for ( i = 0; i < n; i++)
	{
		cout << "Donner la valeur de la case " << i+1 << endl;
		cin >> tab[i];
	}
}

void affichage(TENTIER tab, int n)
{
	int i;

	for ( i = 0; i < n; i++)
	{
		cout << tab[i] << endl;
	}
}

int recherchenontrie(TENTIER tab, int n, int elem)
{
	int i;

	i = 0;
	while ((i < n) && (tab[i]!= elem))
	{
		i = i + 1;
	}
	if (i>n)
	{
		i = -1;
	}
	return(i);
}

void insertionnontrie(TENTIER tab, int & n, int elem)
{
	n = n + 1;
	tab[n-1] = elem;
}

void suppressionnontrie(TENTIER tab, int & n, int elem)
{
	int indsup, inddec;

	indsup = recherchenontrie(tab, n, elem);
	if (indsup == -1)
	{
		cout << "La valeur n'existe pas" << endl;
	}
	else
	{
		for ( inddec = indsup; inddec < n-1; inddec++)
		{
			tab[inddec] = tab[inddec + 1];
		}
		n = n - 1;
	}
}

bool veriftrie(TENTIER tab, int n)
{
	int i;
	bool tri;

	i = 1;
	while ((i<n) && (tab[i]<tab[i+1]))
	{
		i = i + 1;
	}
	if (i==n)
	{
		tri = true;
	}
	else
	{
		tri = false;
	}
	return(tri);
}

void permute(int & x, int & y)
{
	int perm;

	perm = x;
	x = y;
	y = perm;
}

void main(void)
{
	TENTIER tab;
	int n, elem;

	cout << "Combien d'elements entrer ?" << endl
		<< "Nombre : ";
	cin >> n;

	while ((n<1) && (n>Nbmax))
	{
		cout << endl << endl
			<< "ERREUR : Ce nombre est en dehors des limites !" << endl
			<< "Combien d'elements entrer ? (max : " << Nbmax << ")" << endl
			<< "Nombre : ";
		cin >> n;
	}

	creation(tab, n);

	cout << endl << endl;
	system("pause");
	system("cls");

	cout << "Contenu du tableau :" << endl << endl;
	affichage(tab, n);

	cout << endl << endl;
	system("pause");

	cout << "insérer une nouvelle valeur : ";
	cin >> elem;
	insertionnontrie(tab, n, elem);

	cout << "Contenu du tableau :" << endl << endl;
	affichage(tab, n);

	cout << endl << endl;
	system("pause");

	cout << "Quel nombre supprimer ?" << endl;
	cin >> elem;
	suppressionnontrie(tab, n, elem);

	cout << endl << endl;
	system("cls");

	cout << "Contenu du tableau :" << endl << endl;
	affichage(tab, n);

	cout << endl << endl;
	system("pause");

	cout << "Quel nombre chercher ?" << endl;
	cin elem;

}