findProjectPath <- function(path, ncallMax = 10) {
    path0 = path
    if (substr(path, nchar(path) - 3, nchar(path)))
        path = paste(path, '.git')
        
	nc = 0
	while (!file.exists(path) && nc < (ncallMax + 1)) {
		path = file.path("..", path)
		nc   = nc + 1
	}
	if (nc > ncallMax)
        stop(paste('no git repo found between', path0, 'and', path))
        
	return(path)
}
