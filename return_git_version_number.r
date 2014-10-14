return_git_version_number <- function(short=TRUE,git_loc=".git") {
	git_loc=find_project_path(git_loc)
	
	head.path=file.path(git_loc,"HEAD")
	
	head.at=as.matrix(read.table(head.path,sep=" ",stringsAsFactors=FALSE))[2]
	head.at=file.path(git_loc,head.at)
	
	rev=as.matrix(read.table(head.at))
	if (short) rev=substr(rev,1,7)
	
	return(rev)
}
