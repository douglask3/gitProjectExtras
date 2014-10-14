returnGitVersionNumber <- function(short=TRUE,gitLoc=".git") {
	gitLoc=findProjectPath(gitLoc)
	
	headPath=file.path(gitLoc,"HEAD")
	
	headAt=as.matrix(read.table(headPath,sep=" ",stringsAsFactors=FALSE))[2]
	headAt=filePath(gitLoc,headAt)
	
	rev=as.matrix(read.table(headAt))
	if (short) rev=substr(rev,1,7)
	
	return(rev)
}
