/*
 *  Hello World for the CodeWarrior
 *  © 1997-1998 Metrowerks Corp.
 *
 *  Questions and comments to:
 *       <mailto:support@metrowerks.com>
 *       <http://www.metrowerks.com/>
 */

#include <iostream.h>
using namespace std;  //introduces namespace std

typedef unsigned char 					Str255[256];

void GenerateRegNo(Str255 name, Str255 regNo);

void GenerateRegNo(Str255 name, Str255 regNo)
{
	long i;
	
	regNo[0] = 6;
	
	for (i=1; i <= 6; i++)
		regNo[i] = (name[i] % 10);
	
	for (i=1; i <= 6; i++)
		regNo[i] = ((regNo[i] + name[i+6]) % 10);
		
	for (i=1; i <=6; i++)
		regNo[i] = ((regNo[i] + name[i+12]) % 10);
	
	for (i=1; i <=6; i++)
		regNo[i] = ((regNo[i] + name[i+18]) % 10);
	
	regNo[1] = ((regNo[1] + 2) % 10) + '0';
	
	//for (int i = 1; i <= 6; i++)
	//	cout << regNo[i] << ".";
	//cout << endl;
	
	regNo[2] = ((regNo[2] + 4) % 10) + '0';
	
	//for (int i = 1; i <= 6; i++)
	//	cout << regNo[i] << ".";
	//cout << endl;
	
	regNo[3] = ((regNo[3] + 0) % 10) + '0';
	
	//for (int i = 1; i <= 6; i++)
	//	cout << regNo[i] << ".";
	//cout << endl;
	
	regNo[4] = ((regNo[4] + 9) % 10) + '0';
	
	//for (int i = 1; i <= 6; i++)
	//	cout << regNo[i] << ".";
	//cout << endl;
	
	regNo[5] = ((regNo[5] + 9) % 10) + '0';
	
	//for (int i = 1; i <= 6; i++)
	//	cout << regNo[i] << ".";
	//cout << endl;
	
	regNo[6] = ((regNo[6] + 8) % 10) + '0';	

	//for (int i = 1; i <= 6; i++)
	//	cout << regNo[i] << ".";
	//cout << endl;
}

int main()
{
	Str255 name, regNo;
	int k;
	
	do
	{
		cout << "Name: ";
		
		name[0] = 24;
		
		cin.getline((char *)&name[1], 24);
		
		for (k = strlen((char *)&name[1]) + 1; k <= 24; k++)
			name[k] = ' ';
		
		GenerateRegNo(name, regNo);
		cout << "Registration code: ";
		for (int i = 1; i <= 6; i++)
			cout << (char)regNo[i];
		cout << endl;
	} while (name[1] != 'q');
	return 0;
}


