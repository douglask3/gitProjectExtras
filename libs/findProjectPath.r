find_project_path <- function(path,ncall_max=10) {
	nc=0
	while (!file.exists(path) && nc<(ncall_max+1)) {
		path=file.path("..",path)
		nc=nc+1
	}
	if (nc>ncall_max) stop("libs dir or file not found")
	
	return(path)
}
