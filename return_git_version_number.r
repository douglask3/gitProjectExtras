return_git_version_number <- function(short=TRUE,git_loc=".git") {
	git_loc=find_project_path(git_loc)
	
	head.path=file.path(git_loc,"HEAD")
	
	head.at=as.matrix(read.table(head.path,sep=" ",stringsAsFactors=FALSE))[2]
	head.at=file.path(git_loc,head.at)
	
	rev=as.matrix(read.table(head.at))
	if (short) rev=substr(rev,1,7)
	
	return(rev)
}

return_git_remoteURL <- function(git_loc=".git") {
	git_loc=find_project_path(git_loc)
	fileName=file.path(git_loc,'config')
	URL=readChar(fileName, file.info(fileName)$size)
	URL=strsplit(URL,'url = ')[[1]][2]
	
	return(strsplit(URL,'\n\t')[[1]][1])
}
	

find_project_path <- function(path,ncall_max=10) {
	nc=0
	while (!file.exists(path) && nc<(ncall_max+1)) {
		path=file.path("..",path)
		nc=nc+1
	}
	if (nc>ncall_max) stop("libs dir or file not found")
	
	return(path)
}
