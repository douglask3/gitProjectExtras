findProjectPath <- function(path,ncallMax=10) {
	nc=0
	while (!file.exists(path) && nc<(ncallMax+1)) {
		path=file.path("..",path)
		nc=nc+1
	}
	if (nc>ncallMax) stop("libs dir or file not found")
	
	return(path)
}
