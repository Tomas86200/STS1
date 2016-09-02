#include <iostream>
using namespace std;

void AffEtoile(void);
void main(void)
{
	int nb;

	AffEtoile();
	cout << "\nVeuillez saisir un entier : ";
	cin >> nb;
	cout << "le carre de " << nb << " est " << nb*nb << endl;
	AffEtoile();
	system("pause");
}

void AffEtoile(void)
{
	int i;
	for (i = 1; i <= 40; i++)
	{
		cout << "*";
	}
}