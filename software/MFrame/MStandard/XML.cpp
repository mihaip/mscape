#include "XML.h"
#include <iostream.h>

XMLParser::XMLParser(XMLParserDatabase* database, XMLParserPtr previous, XMLParserPtr next, int ID)
		  :MFactory(database),
		   MFactoryObject(previous, next, ID)
{
	sourceFile = NULL;
	fileStart = fileEnd = 0;
}

XMLParser::XMLParser(XMLParserDatabase* database)
		  :MFactory(database),
		   MFactoryObject(NULL, NULL, -1)
{
	sourceFile = NULL;
	fileStart = fileEnd = 0;
}

XMLParser::~XMLParser()
{

}

void XMLParser::SetFile(MFile* file, int start, int end)
{
	sourceFile = file;
	fileStart = start;
	fileEnd = end;
}

void XMLParser::Load()
{
	XMLTagPtr	currentTag;
	int			start;
	
	if (sourceFile != NULL)
	{
		start = fileStart;
		
		while (start < fileEnd)
		{
			currentTag = GetTag(&start);
		
			currentTag->Display();
		}
	}
}

XMLTagPtr XMLParser::GetTag(int* start)
{
	XMLTagPtr	currentTag;
	char 		quotes[80] = "";
	int			quoteLevel = -1, tagStart, tagEnd;
	
	for (tagStart=*start; tagStart < fileEnd && (*sourceFile)[tagStart] != '<'; tagStart++) {;}
	
	for (int i=tagStart; i < fileEnd; i++)
	{
		if (((*sourceFile)[i] == '\"' ||
			(*sourceFile)[i] == '\'') &&
			(i==fileStart || (*sourceFile)[i - 1] != '\\'))
		{
			if (quoteLevel == -1 ||
				quotes[quoteLevel] != (*sourceFile)[i])
				quotes[++quoteLevel]  = (*sourceFile)[i];
			else
				quoteLevel--;
		}
				
		if (quoteLevel == -1 && (*sourceFile)[i] == '>')
		{
			tagEnd = i;
			break;
		}
	}
	
	currentTag = new XMLTag(sourceFile, tagStart, tagEnd);
	
	*start = tagEnd + 1;
	
	return currentTag;
}

void XMLParser::Parse()
{

}

#pragma mark -

XMLTag::XMLTag(MFile* sourceFile, int start, int end)
{
	rawTag = "";
	
	for (int i=start; i <= end; i++)
		rawTag += (*sourceFile)[i];
		
	ParseTag();
}

void XMLTag::ParseTag()
{
	int					tagNameEnd, attributeStart, attributeEnd;
	MString				currentAttributeString;
	
	for (tagNameEnd = 2; tagNameEnd <= rawTag.Length() && !MString::IsWhiteSpace(rawTag[tagNameEnd]); tagNameEnd++) {;}
	
	tagName = rawTag.Substring(2, tagNameEnd - 1);
	
	attributeEnd = tagNameEnd;
	
	do
	{
		char quotes[80] = "";
		int quoteLevel = -1;
		
		for (attributeStart = attributeEnd + 1; attributeStart < rawTag.Length() && MString::IsWhiteSpace(rawTag[attributeStart]); attributeStart++) {;}
		
		if (attributeStart >= rawTag.Length())
			break;
			
		for (int i=attributeStart;; i++)
		{
			if ((rawTag[i] == '\"' || rawTag[i] == '\'') &&
				(i==attributeStart || rawTag[i - 1] != '\\'))
			{
				if (quoteLevel == -1 ||
					quotes[quoteLevel] != rawTag[i])
					quotes[++quoteLevel]  = rawTag[i];
				else
					quoteLevel--;
			}
					
			if ((quoteLevel == -1 && MString::IsWhiteSpace(rawTag[i])) ||
				i == rawTag.Length())
			{
				attributeEnd = i - 1;
				break;
			}
		}
		
		currentAttributeString = "";
		for (int i=attributeStart; i <= attributeEnd; i++)
			currentAttributeString += rawTag[i];
			
		AddAttribute(currentAttributeString);	
		
	} while(attributeStart < rawTag.Length());
}

XMLTag::~XMLTag()
{

}

void XMLTag::Display()
{
	XMLTagAttributePtr	currentAttribute;
	
	rawTag.Display();
	tagName.Display();
	
	currentAttribute = attributes.GetFirst();
	
	do
	{
		if (currentAttribute != NULL)
		{
			currentAttribute->GetName().Display();
			cout << "=" << endl;
			currentAttribute->GetValue().Display();
			cout << "-----" << endl;
			
			currentAttribute = XMLTagAttributePtr(currentAttribute->GetNext());
		}
	} while (currentAttribute != NULL);
}

void XMLTag::AddAttribute(MString attributeString)
{
	XMLTagAttributePtr	newAttribute;
	
	newAttribute = new XMLTagAttribute(NULL, NULL);
	newAttribute->Set(attributeString);
	
	attributes.InsertAtEnd(newAttribute);
}

#pragma mark -

XMLTagAttribute::XMLTagAttribute(XMLTagAttributePtr previousInList, XMLTagAttributePtr nextInList)
				:MLinkedListObject(previousInList, nextInList)
{
	name = value = "";
}

XMLTagAttribute::~XMLTagAttribute()
{
	;
}

void XMLTagAttribute::Set(MString attribute)
{
	int endOfName, startOfValue, endOfValue;
	
	for (endOfName = 1; endOfName <= attribute.Length() && attribute[endOfName] != '='; endOfName++) {;}
	
	name = attribute.Substring(1, endOfName - 1);
	
	if (attribute[endOfName] == '=')
	{
		startOfValue = endOfName + 1; if (attribute[startOfValue] == '\"') startOfValue++;
		endOfValue = attribute.Length(); if (attribute[endOfValue] == '\"') endOfValue--;
		
		value = attribute.Substring(startOfValue, endOfValue);
	}
	else
		value = "";
}

MString XMLTagAttribute::GetName()
{
	return name;
}

MString XMLTagAttribute::GetValue()
{
	return value;
}

#pragma mark -

XMLParserDatabase::XMLParserDatabase()
{
	;
}

XMLParserDatabase::~XMLParserDatabase()
{
	;
}

void XMLParserDatabase::RegisterHandler(XMLDescriptor descriptor)
{

}

MType XMLParserDatabase::TagToType(MString tag)
{
	MType type = 0;
	
	for (int i=0; i < sizeof(type)/sizeof(tag[0]); i++)
		type += tag[i] * pow(sizeof(tag[0]), i);
		
	return type;
}
