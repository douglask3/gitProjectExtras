setup_project_structure <- function(namess=c('out_dir','data_dir','temp_dir'),
									dirn=c('outputs','data','temp'))
	mapply(makeGlobDir,namess,dirn)



