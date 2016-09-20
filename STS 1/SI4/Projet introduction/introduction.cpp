#include<iostream>
using namespace std;

void main(void)
{
	int menu, carre, limite, nb1, nb2, nb3, age, borne, borne2;
	char quitter, nom[80], prenom[80];
	quitter = 'n';
	do{
		cout << "0-Quitter\n1 - Carre de 1 à 10\n2 - Exo 2\n3 - exo 3\n4 - exo 4\n5- exo 5\n6 - exo 6\n7 - exo 7\n8 - exo 8\nChoix : ";
		cin >> menu;


		switch (menu)
		{
		case 0:
		{
				  cout << "Voulez vous vraiment quitter ? (o/n)" << endl;
				  cin >> quitter;
				  while (quitter != 'o' && quitter != 'n')
				  {
					  cout << "Erreur : Voulez-vous vraiment quitter ? (o/n) " << endl;
				  }
		}
			break;
		case 1: cout << "\nBienvenue dans les carrés" << endl;
			system("pause");

			for (carre = 1; carre <= 10; carre++)
			{
				cout << "Le carré de " << carre << " est " << carre*carre << endl;
			}
		break;
		case 2:
		{
			{
				cout << "\nBienvenue dans les carres" << endl;
				system("pause");
				cout << "quelle doit etre la limite de la suite ?" << endl;
				cin >> limite;
				for (carre = 1; carre <= limite; carre++)
				{
					cout << "Le carre de " << carre << "est" << carre*carre << endl;
				}
				cout << "Suite et exercice termine" << endl;
			}
		}
				break;
		case 3:
		{
				  cout << "\nproduit et moyenne" << endl;
				  system("pause");
				  cout << "Rentrer le premier chiffre" << endl;
				  cin >> nb1;
				  cout << "Rentrer le second chiffre" << endl;
				  cin >> nb2;
				  cout << "Rentrer le troisieme chiffre" << endl;
				  cin >> nb3;
				  cout << "Le produit des trois chiffres est " << nb1*nb2*nb3 << endl;
				  cout << "La moyenne des trois chiffres est " << nb1*nb2*nb3 / 3 << endl;
		}
			break;
		case 4:
		{
				  cout << "\nMajeur";
				  cout << "Quel est le prenoù de la personne ?" << endl;
				  cin >> prenom;
				  cout << "Quel est le nom de la personne ?" << endl;
				  cin >> nom;
				  cout << "Quel est l'age de la personne ?" << endl;
				  cin >> age;
				  if (age >= 18)
				  {
					  cout << prenom << " " << nom << "est majeur ( " << age << "ans)";
				  }
				  else
				  {
					  cout << prenom << " " << nom << "est mineur ( " << age << "ans)"; 
				  }
		}
			break;
		case 5:
		{
			cout << "\n petit, grand ou egal ?" << endl;
			cout << "entrez le nombre" << endl;
			cin >> nb1;
			cout << "Entrez la borne" << endl;
			cin >> borne;
			if (nb1 > borne)
			{
				cout << nb1 << "est supérieur a la borne" << endl;
			}
			else if (nb1 == borne)
			{
				cout << nb1 << "est egal a la borne" << endl;
			}
			else
			{
				cout << nb1 << "est inferieur a la borne" << endl;
			}
			break;
		case 6:
		{
				  cout << "\n petit, grand ou egal ? 2 " << endl;
				  cout << "entrez le nombre" << endl;
				  cin >> nb1;
				  cout << "Entrez la borne" << endl;
				  cin >> borne;
				  cout << "Entrez la borne 2" << endl;
				  cin >> borne2;
				  if (borne > nb1 && borne2 > nb1)
				  {
					  cout << nb1 << "est inferieur aux bornes" << endl;
				  }
				  else
				  {
					  if (nb1 == borne && nb1 == borne2)
					  {
						  cout << nb1 << "est egal aux bornes" << endl;
					  }
					  else
					  {
						  if (nb1 > borne && nb1 < borne2)
						  {
							  cout << nb1 << "est supérieur aux bornes" << endl;
						  }
						  else
						  {
							  cout << nb1 << "se trouve entre les deux bornes" << endl;
						  }
					  }
				  }
		}
			break;
		case 7: 
		{
				  cout << "\nExecice 7" << endl;
				  while (nb1 != 0 )
				  {

			break;
		case 8:  cout << "\nExo 8";
			break;
		default: cout << "\nCe choix n'existe pas";
		}
	} while (quitter != 'o');
	cout << "\nQuitter";
	system("pause");
	}