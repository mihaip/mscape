// __________________________________________________________________________________________
// Program		: Meshroom
// Filename		: MString.cpp
// Author		: Mihai Parparita (St. Mary's International School)
// Last modified: April 1, 2000
// Description	: implementation of string class

#include <assert.h>
#include "MString.h"
#include "MException.h"
#include "commonFunctions.h"

MString::MString(char* contents)
{
	data = NULL;
	length = 0;
	
	if (contents != NULL)
		Assign(contents, MUtilities::strlen(contents));
}

MString::MString(Str255 contents)
{
	data = NULL;
	length = 0;
	
	Assign((char*)&contents[1], contents[0]);
}

MString::MString(float contents)
{
	char	buff[80];
	
	data = NULL;
	length = 0;
	
	sprintf(buff, "%f", contents);
	
	Assign(buff, MUtilities::strlen(buff));
}

MString::MString(double contents)
{
	char	buff[80];
	
	data = NULL;
	length = 0;
	
	sprintf(buff, "%g", contents);
	
	Assign(buff, MUtilities::strlen(buff));
}

MString::MString(const MString& src)
{
	data = NULL;
	
	Assign(&src.data[1], src.Length());
}

MString::~MString()
{
	delete [] data;
}

#pragma mark -

MString::operator unsigned char*() const
{
	return (unsigned char*)&data[1];
}

unsigned char* MString::AsCString()
{
	return (unsigned char*)&data[1];
}

StringPtr MString::AsPascalString()
{
	return (StringPtr)data;
}

#pragma mark -

MString& MString::Assign(const char* contents, int contentsLength)
{
	if (data != NULL)
		delete [] data;
	
	
	data = new char[contentsLength + 2];
	if (data == NULL)
		MThrow(memFullErr);
	
	data[0] = contentsLength;
	length = contentsLength;
	
	for (int i=1; i <= length; i++)
			data[i] = contents[i - 1];
	
	data[length + 1] = '\0';
			
	return *this;
}

MString& MString::Append(const char* contents, int contentsLength)
{
	char *temp;
	int currentLength;
	
	currentLength = Length();
	
	temp = new char[currentLength + contentsLength + 2];
	for (int i=0; i < currentLength + 2; i++)
		temp[i] = data[i];
	delete [] data;
	data = temp;
	
	data[0] += contentsLength;
	length += contentsLength;
	
	for (int i=0; i <= contentsLength; i++)
		data[currentLength + i + 1] = contents[i];
		
	data[length + 1] = '\0';
		
	return *this;
}

MString& MString::Append(int number)
{
	char	temp[40];
	
	sprintf(temp, "%d", number);
	
	return Append(temp, MUtilities::strlen(temp));
}

bool MString::SameAs(const char* contents) const
{
	return (strcmp(&data[1], contents) == 0);
}

#pragma mark -

int	MString::Length() const
{
	return length;
}

int MString::Width()
{
	return StringWidth((unsigned char*)data);
}

int MString::Height()
{
	return StringHeight((unsigned char*)data);
}

int MString::RowHeight()
{
	return CharacterHeight();
}

int MString::DescenderHeight()
{
	FontInfo info;
	
	GetFontInfo(&info);
	
	return info.descent;
}

MString MString::Substring(int start, int end)
{
	MString substring;
	
	assert(end >= start);
	
	substring.Assign(&data[start], end - start + 1);
	
	return substring;
}

int MString::IndexOf(MString pattern)
{
	int currentIndex = 1;
	bool found = false;
	
	while (currentIndex <= Length() && !found)
	{
		if (data[currentIndex] == pattern[1])
		{
			found = true;
			for (int i = 1; i < pattern.Length(); i++)
				if (data[currentIndex + i] == pattern[1 + i] && found)
					found = true;
				else
					found = false;
		}
		currentIndex++;
	}
	
	if (found)
		return currentIndex - 2;
	else
		return -1;
}

MString MString::GetWord(int* startIndex)
{
	MString word("");
	
	for (int i = *startIndex; i < Length(); i++)
	{
		*startIndex = i + 1;
		if (data[i + 1] != ' ')
			word.Append(&data[i + 1], 1);
		else
			break;
	}
	
	return word;
}

MString MString::GetWordHTML(int* startIndex, bool* htmlTag)
{
	MString word("");
	
	*htmlTag = (data[*startIndex] == '<');
	
	for (int i = *startIndex; i < Length() + 1; i++)
	{
		*startIndex = i + 1;
		if (!(*htmlTag) && (data[i] == ' ' || data[i] == '<'))
		{
			if (data[i] == ' ')
				word.Append(&data[i], 1);
			else if (data[i] == '<')
				(*startIndex)--	;
				
			break;
		}
		else if	((*htmlTag) && data[i] == '>')
		{
			word.Append(&data[i], 1);
			break;
		}
		else
			word.Append(&data[i], 1);
	}
	
	return word;
}

void MString::Display()
{
	for (int i=1; i <= Length(); i++)
		 printf("%c", data[i]);
	
	printf("\n");
}

#pragma mark -


void MString::LoadFromResource(short resID, short index)
{
	Str255 temp;
	
	GetIndString(temp, resID, index);
	
	Assign((char *)&temp[1], temp[0]);
}

void MString::Draw(void)
{
	DrawString((unsigned char*)data);
}

void MString::Draw(Rect targetRect)
{
	int		rowHeight = RowHeight(),
			descenderHeight = DescenderHeight();
	
	if (targetRect.bottom - targetRect.top <= rowHeight)
	{
		MoveTo(targetRect.left, targetRect.bottom - descenderHeight);
		Draw();
	}
	else
	{
		Point	currentPen;
		MString	currentWord(""), spaceString(" ");
		
		MoveTo(targetRect.left, targetRect.top + rowHeight - descenderHeight);
		
		
		for (int i = 0; i < Length();)
		{
			currentWord = GetWord(&i);
			GetPen(&currentPen);
			
			if (currentPen.v >= targetRect.bottom - descenderHeight||
				currentWord.Width() < targetRect.right - currentPen.h)
			{
				currentWord.Draw();
				spaceString.Draw();
			}
			else
			{
				MoveTo(targetRect.left, currentPen.v + rowHeight);
				currentWord.Draw();
				spaceString.Draw();
			}
		}
	}
}

void MString::DrawHTML(Rect targetRect)
{
	int		rowHeight = RowHeight(),
			descenderHeight = DescenderHeight();
	Point	currentPen;
	MString	currentWord(""), spaceString(" ");
	bool	htmlTag;
	StyleParameter currentStyle = normal;
	
	MoveTo(targetRect.left, targetRect.top + rowHeight - descenderHeight);
	
	for (int i = 1; i < Length() + 1;)
	{
		currentWord = GetWordHTML(&i, &htmlTag);
		GetPen(&currentPen);
			
		if (currentWord == "<BR>")
		{
			MoveTo(targetRect.left, currentPen.v + rowHeight);
		}
		else if (currentWord == "<B>")
		{
			currentStyle |= bold;
			TextFace(currentStyle);
		}
		else if (currentWord == "</B>")
		{
			currentStyle &= ~bold;
			TextFace(currentStyle);
		}
		else if (currentWord == "<I>")
		{
			currentStyle |= italic;
			TextFace(currentStyle);
		}
		else if (currentWord == "</I>")
		{
			currentStyle &= ~italic;
			TextFace(currentStyle);
		}
		else if (currentPen.v >= targetRect.bottom - descenderHeight||
			currentWord.Width() < targetRect.right - currentPen.h)
		{
			currentWord.Draw();
		}
		else
		{
			MoveTo(targetRect.left, currentPen.v + rowHeight);
			currentWord.Draw();
		}
	}
	
	TextFace(normal);
}

#pragma mark -

bool MString::IsWhiteSpace(char c)
{
	return (c == ' ' || c == '\t' || c == '\n');
}

#pragma mark -

MString operator+(const MString &lhs, const MString &rhs)
{
	MString result = lhs;
	
	result += rhs;

	return result;
}

MString operator+(const MString &lhs, const char* rhs)
{
	MString result = lhs;
	return result += rhs;
}

MString operator+(const MString &lhs, const Str255 rhs)
{
	MString result = lhs;
	return result += rhs;
}

MString operator+(const MString &lhs, const int rhs)
{
	MString result = lhs;
	return result += rhs;
}

#pragma mark -

/*bool operator==(const MString &lhs, const MString &rhs)
{
	return lhs.SameAs(&rhs.data[1]);
}*/

bool operator==(const MString &lhs, const char* contents)
{
	return lhs.SameAs(contents);
}

