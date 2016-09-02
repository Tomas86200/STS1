#include <iostream>
using namespace std;


void permutation(int & a, int & b)
{
	int c;
	c = a;
	a = b;
	b = c;

}

void main(void)
{
	int a, b;
	cout << "entrez la valeur a." << endl;
	cin >> a;
	cout << "entrez la valeur de b." << endl;
	cin >> b;
	permutation(a,b);
	cout << "apres permutation a=" << a << "b=" << b << endl;
	
}


bool mod2(int nb)
{
	return (nb % 3 == 0);
}

