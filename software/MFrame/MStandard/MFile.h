#pragma once

class MFile
{
	private:
		char*	contents;
		
		int 	size;
		
	public:
	
				MFile();
				MFile(char* fileName);
				~MFile();
		
		void	Load(char* fileName);
		
		int		GetSize();
		
		char	operator[] (int position) {return contents[position];}
		
};
