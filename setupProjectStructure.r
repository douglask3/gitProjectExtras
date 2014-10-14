setupProjectStructure <- function(namess=c('out_dir','data_dir','temp_dir','figs_dir','docs_dir'),
									dirn=c('outputs','data','temp','figs','docs'))
	mapply(makeGlobDir,namess,dirn)
