// $Id$
// Utility class for swapping endian-ness.
// Copyright ©1997-9 Matthew Caldwell -- All Rights Reserved

//-------------------------------------------------------------------------

class UByteSwap
{
	public:
		static void Swap ( unsigned short& n );
		static void Swap ( signed short& n );
		
		static void Swap ( unsigned long& n );
		static void Swap ( signed long& n );
};

//-------------------------------------------------------------------------

inline void UByteSwap::Swap ( unsigned short& n )
{
	unsigned short temp = n;
	unsigned char* dst = (unsigned char*) &n;
	unsigned char* src = (unsigned char*) &temp;
	
	dst[0] = src[1];
	dst[1] = src[0];
}

//-------------------------------------------------------------------------

inline void UByteSwap::Swap ( signed short& n )
{
	signed short temp = n;
	unsigned char* dst = (unsigned char*) &n;
	unsigned char* src = (unsigned char*) &temp;
	
	dst[0] = src[1];
	dst[1] = src[0];
}

//-------------------------------------------------------------------------

inline void UByteSwap::Swap ( unsigned long& n )
{
	unsigned long temp = n;
	unsigned char* dst = (unsigned char*) &n;
	unsigned char* src = (unsigned char*) &temp;
	
	dst[0] = src[3];
	dst[1] = src[2];
	dst[2] = src[1];
	dst[3] = src[0];
}

//-------------------------------------------------------------------------

inline void UByteSwap::Swap ( signed long& n )
{
	signed long temp = n;
	unsigned char* dst = (unsigned char*) &n;
	unsigned char* src = (unsigned char*) &temp;
	
	dst[0] = src[3];
	dst[1] = src[2];
	dst[2] = src[1];
	dst[3] = src[0];
}

//-------------------------------------------------------------------------


