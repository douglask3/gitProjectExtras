gitRemoteURL <- function(gitLoc = ".git") {
	gitLoc   = findProjectPath(gitLoc)
	fileName = file.path(gitLoc,'config')
	URL = readChar(fileName, file.info(fileName)$size)
	URL = strsplit(URL,'url = ')[[1]][2]

	return(strsplit(URL,'\n\t')[[1]][1])
}
