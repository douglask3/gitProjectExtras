setup_project_structure <- function(namess=c('out_dir','data_dir','temp_dir'),
									dirn=c('outputs','data','temp'))
	mapply(makeGlobDir,namess,dirn)


makeDir <- function(fname) if(!file.exists(fname)) dir.create(fname)

assignGlobal <- function (obj,fname) {
	assign(obj,fname)
	assign(obj,fname,envir = as.environment(1))
}



makeGlobDir <- function(obj,fname) {
	makeDir(fname)
	assignGlobal(obj,fname)
}
