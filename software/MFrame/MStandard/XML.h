#include "MFactory.h"
#include "MUtilities.h"
#include "MString.h"
#include "MFile.h"

enum XMLDescriptors
{
	xmldInstatiator = 'Inst',
	xmldTag = 'Tag '
};	

class XMLParser;

typedef XMLParser* XMLParserPtr;

typedef void* (*XMLDescriptor)(MType descriptionQuery);
typedef XMLParserPtr (*XMLInstantiator)(XMLParserPtr previousInList, XMLParserPtr nextInList, int objectID);


class XMLParserDatabase : public MFactoryDatabase<XMLInstantiator>
{
	public:
				XMLParserDatabase();
				~XMLParserDatabase();
		
		void	RegisterHandler(XMLDescriptor descriptor);
		
	private:
	
		MType	TagToType(MString tag);
};

class XMLTagAttribute;

typedef XMLTagAttribute* XMLTagAttributePtr;

class XMLTagAttribute : public MLinkedListObject
{
	public:
				XMLTagAttribute(XMLTagAttributePtr previousInList, XMLTagAttributePtr nextInList);
				~XMLTagAttribute();
		
		void	Set(MString attribute);
		
		MString	GetName();
		MString	GetValue();
	
	private:
		MString name, value;
};


class XMLTag
{
	public:
										XMLTag(MFile* file, int start, int end);
										~XMLTag();
				
		void							Display();
	private:
	
		void							ParseTag();
		void							AddAttribute(MString attributeString);
	
		MString							rawTag, tagName;
		MLinkedList<XMLTagAttribute>	attributes;
};

typedef XMLTag* XMLTagPtr;

class XMLParser: public MFactory<XMLParser, XMLInstantiator>, MFactoryObject
{
	public:
	
						XMLParser(XMLParserDatabase* database, XMLParserPtr previous, XMLParserPtr next, int ID);
						XMLParser(XMLParserDatabase* database);
						~XMLParser();
		
		static void*	Descriptor(MType descriptionQuery);
		
		void			SetFile(MFile* file, int start, int end);
		void			Load();
		void			Parse();
		
	private:
	
		XMLTagPtr		GetTag(int* start);
	
		MFile*			sourceFile;
		
		int				fileStart, fileEnd;
		
	friend class MLinkedList<XMLParser>;
};
