/*
 *  Hello World for the CodeWarrior
 *  © 1997-1998 Metrowerks Corp.
 *
 *  Questions and comments to:
 *       <mailto:support@metrowerks.com>
 *       <http://www.metrowerks.com/>
 */

#include <stdio.h>
#include <stdlib.h>
#include <MacTypes.h>

void GenerateRegCode(Str255 name, Str255 regCode);

void GenerateRegCode(Str255 name, Str255 regCode)
{
	int i;
	
	for (i = name[0] + 1; i <= 24; i++)
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
	int i;
	
	while (1)
	{
		i = 1;
		printf("Name: ");
		while (scanf("%c", &name[i++]) && name[i- 1] != '\n') {;}
			name[i-1] = '\0';

		name[0] = i-2;
		
		GenerateRegCode(name, regCode);
		
		printf("Registration code: ");
		for (i=1; i <=8; i++)
			printf("%c", regCode[i]);
			
		printf("\n");
	}
	
	return 0;
	
}
