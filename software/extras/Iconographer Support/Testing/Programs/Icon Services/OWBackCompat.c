#include <Resources.h>
#include <Errors.h>
#include <Traps.h>
#include <Aliases.h>
// Taken direct from some technote or other with minor changes.

    /*--------------------------------*
     | ResolveAliasFileWithMountFlags |
     *--------------------------------*/


pascal OSErr ResolveAliasFileWithMountFlags	(FSSpec *				fileFSSpec,
								 Boolean 				resolveAliasChains,
								 Boolean *				targetIsFolder,
								 Boolean *				wasAliased,
								 unsigned long 			mountFlags) 
{

    /* maximum number of aliases to resolve before giving up */
    #define MAXCHAINS 5

      short myResRefNum;
      Handle alisHandle;
      FSSpec initFSSpec;
      Boolean updateFlag, foundFlag, wasAliasedTemp, specChangedFlag;
      short chainCount;
      OSErr retCode;
      Boolean mountRemoteVols = (mountFlags != kResolveAliasFileNoUI );

      if (fileFSSpec == nil || targetIsFolder == nil || wasAliased == nil)
        return paramErr;

      initFSSpec = *fileFSSpec; /* so FSSpec can be restored in case of error */
      chainCount = MAXCHAINS;   /* circular alias chain protection */
      myResRefNum = -1;         /* resource file not open */

      *targetIsFolder = foundFlag = specChangedFlag = false;

      /* loop through chain of alias files */
      do {
        chainCount--;

        /* check if FSSpec is an alias file or a directory */
        /* note that targetIsFolder => NOT wasAliased      */

        retCode = IsAliasFile(fileFSSpec, wasAliased, targetIsFolder);
        if (retCode != noErr || !(*wasAliased)) break;

        /* get the resource file reference number */
        myResRefNum = FSpOpenResFile(fileFSSpec, fsCurPerm);
        retCode = ResError();
        if (myResRefNum == -1) break;

        /* the first 'alis' resource in the file is the appropriate alias */
        alisHandle = Get1IndResource(rAliasType, 1);
        retCode = ResError();
        if (alisHandle == nil) break;

        /* load the resource explicitly in case SetResLoad(FALSE) */
        LoadResource(alisHandle);
        retCode = ResError();
        if (retCode != noErr) break;

        retCode = FollowFinderAlias(fileFSSpec, (AliasHandle) alisHandle,
          mountRemoteVols, fileFSSpec, &updateFlag);
        /* FollowFinderAlias returns nsvErr if volume not mounted */

        if (retCode == noErr) {

          if (updateFlag) {
            /* the resource in the alias file needs updating */
            ChangedResource(alisHandle);
            WriteResource(alisHandle);
          }

          specChangedFlag = true; /* in case of error, restore file spec */

          retCode = IsAliasFile(fileFSSpec, &wasAliasedTemp, targetIsFolder);
          if (retCode == noErr)
            /* we're done unless it was an alias file and we're following a chain */
            foundFlag = !(wasAliasedTemp && resolveAliasChains);

        }

        CloseResFile(myResRefNum);
        myResRefNum = -1;

      } while (retCode == noErr && chainCount > 0 && !foundFlag);

      /* return file not found error for circular alias chains */
      if (chainCount == 0 && !foundFlag) retCode = fnfErr;

      /* if error occurred, close resource file and restore the original FSSpec */

      if (myResRefNum != -1) CloseResFile(myResRefNum);
      if (retCode != noErr && specChangedFlag) *fileFSSpec = initFSSpec;

      return retCode;
    }

    /*-------------*
     | IsAliasFile |
     *-------------*/

pascal OSErr IsAliasFile(const FSSpec *fileFSSpec,
                             Boolean *aliasFileFlag,
                             Boolean *folderFlag)
    /* sets aliasFileFlag if the FSSpec points to an alias file;
       sets folderFlag if the FSSpec points to a folder */

    {
      CInfoPBRec myCInfoPBRec;
      OSErr retCode;

      if (fileFSSpec == nil || aliasFileFlag == nil || folderFlag == nil)
        return paramErr;

      *aliasFileFlag = *folderFlag = false;

      /* get the item's catalog information */
      myCInfoPBRec.hFileInfo.ioCompletion = nil;
      myCInfoPBRec.hFileInfo.ioNamePtr = (StringPtr)&fileFSSpec->name;
      myCInfoPBRec.hFileInfo.ioVRefNum = fileFSSpec->vRefNum;
      myCInfoPBRec.hFileInfo.ioDirID = fileFSSpec->parID;
      myCInfoPBRec.hFileInfo.ioFVersNum = 0;  /* MFS compatibility, see TN #204 */
      myCInfoPBRec.hFileInfo.ioFDirIndex = 0;

      retCode = PBGetCatInfoSync(&myCInfoPBRec);

      /* set aliasFileFlag if the item is not a directory and the
         aliasFile bit is set */

      if (retCode == noErr) {
        /* check directory bit */
        if ((myCInfoPBRec.hFileInfo.ioFlAttrib & ioDirMask) != 0)
          *folderFlag = true;

        /* check isAlias bit */
        else if ((myCInfoPBRec.hFileInfo.ioFlFndrInfo.fdFlags & 0x8000) != 0)
          *aliasFileFlag = true;
      }

      return retCode;
    }	
    /*----------------------------*
     | ResolveAliasWithMountFlags |
     *----------------------------*/    
pascal OSErr ResolveAliasWithMountFlags		(const FSSpec *			fromFile,
								 AliasHandle 			alias,
								 FSSpec *				target,
								 Boolean *				wasChanged,
								 unsigned long 			mountFlags)
{   
	OSErr theErr= noErr;
	Boolean logon = (mountFlags != kResolveAliasFileNoUI);
	Boolean wasAliasedTemp,targetIsFolder;
	FSSpec initSpec = *fromFile;
	*wasChanged = false;
	if ((alias == nil) || (target == nil) || (wasChanged == nil)) return paramErr;
	
    theErr =  FollowFinderAlias				(fromFile,
								 			alias,
								 			logon,
								 			target,
								 			wasChanged);
	if (theErr != noErr) {
		return theErr;
	}
	
	theErr = IsAliasFile(target, &wasAliasedTemp, &targetIsFolder);	
		if (theErr != noErr) {
		return theErr;
	}
	if (wasAliasedTemp){
		theErr = 	ResolveAliasFileWithMountFlags	(target,
													 true,
								 					&targetIsFolder,
								 					&wasAliasedTemp,
								  					mountFlags) ;
	}
	return theErr;
}								  											 				

								 
