#include <fstream.h>
#include <ios.h>
#include "MFile.h"

MFile::MFile()
{
	contents = NULL;
}

MFile::MFile(char* fileName)
{
	contents = NULL;
	Load(fileName);
}

MFile::~MFile()
{
	delete [] contents;
}

#pragma mark -

void MFile::Load(char* fileName)
{
	fstream file(fileName, ios_base::in);
	
	if (contents != NULL)
		delete [] contents;
		
	file.seekg(0, ios_base::end);
	size = file.tellg();
	size--;
	file.seekg(0, ios_base::beg);
	
	contents = new char[size];
	
	for (int i=0; !file.eof() && i < size; i++)
		file.get(contents[i]);
		
	file.close();
}

int MFile::GetSize()
{
	return size;
}
