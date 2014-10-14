return_git_remoteURL <- function(git_loc=".git") {
	git_loc=find_project_path(git_loc)
	fileName=file.path(git_loc,'config')
	URL=readChar(fileName, file.info(fileName)$size)
	URL=strsplit(URL,'url = ')[[1]][2]
	
	return(strsplit(URL,'\n\t')[[1]][1])
}
