/*
 *  Hello World for the CodeWarrior
 *  © 1997-1998 Metrowerks Corp.
 *
 *  Questions and comments to:
 *       <mailto:support@metrowerks.com>
 *       <http://www.metrowerks.com/>
 */

#include <iostream>
#include <MacTypes.h>

using namespace std;  //introduces namespace std
void GenerateRegCode(Str255 name, Str255 regCode);

void GenerateRegCode(Str255 name, Str255 regCode)
{
	for (int i = name[0] + 1; i <= 24; i++)
		name[i] = ' ';
	
	name[0] = 24;
	
	regCode[0] = 8;
	regCode[1] = 'A' + ((name[1] ^ 'I') + (name[3] ^ 'p')) % 24;
	regCode[2] = 'A' + ((name[2] ^ 'c') + (name[4] ^ 'h')) % 24;
	regCode[3] = '0' + ((name[6] ^ 'o') + (name[5] ^ 'e')) % 9;
	regCode[4] = '0' + ((name[8] ^ 'n') + (name[7] ^ 'r')) % 9;
	regCode[5] = '0' + ((name[10] ^ 'o') + name[9] + name[17] + name[19] ) % 9;
	regCode[6] = '0' + ((name[12] ^ 'g') + name[11] + name[18] + name[20]) % 9;
	regCode[7] = '0' + ((name[14] ^ 'r') + name[13] + name[23] + name[21]) % 9;
	regCode[8] = '0' + ((name[15] ^ 'a') + name[16] + name[22] + name[24]) % 9;
}

int main()
{
	Str255 name, regCode;
	
	while (1)
	{
		cout << "Name: ";
		cin.getline((char*)&name[1], 24);

		name[0] = strlen((char*)&name[1]);
		
		GenerateRegCode(name, regCode);
		
		cout << "Registration code: ";
		for (int i=1; i <=8; i++)
			cout << (char)regCode[i];
			
		cout << endl;
	}
	
	return 0;
	
}


