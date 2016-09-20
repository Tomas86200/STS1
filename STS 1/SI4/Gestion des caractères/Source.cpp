#include <iostream>
using namespace std;

#define MAX 256
typedef bool ENSCAR[MAX];

void initialisation(ENSCAR);
void ajouter(ENSCAR, char);
void retirer(ENSCAR, char);
bool appartenir(ENSCAR, char);
void afficher_caracteres(ENSCAR).

void main(void)
{
	char menu, c,quitter;
	ENSCAR val;
	do
	{
		cout << "Quel caractere utiliser ?" << endl;
		cin >> c;
		cout << "Que voulez-vous faire ?\nA-Ajouter\nB-Retirer\nC-Appartenir\nD-Afficher" << endl;
		cin >> menu;
		switch (menu)
		{
			case 'A':ajouter(val, c);
				break;
			case 'B':retirer(val, c);
				break;
			case 'C':appartenir(val, c);
				break;
			case 'D':afficher_caracteres(val);
				break;
			case 'E':cout << "Quitter ? (o/n)" << endl;
				cin >> quitter;
			while (quitter != 'o' && quitter != 'n')
			{
				cout << "Quitter ?(o/n)" << endl;
				cin >> quitter;
			}
			break;
			default: cout << "Erreur: Menu inexistant" << endl;
			break;
		}
	} while (quitter != 'o');

}
