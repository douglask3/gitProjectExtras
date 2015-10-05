setupProjectStructure <- function(namess = paste(dirn,'_dir',sep=""),
					                dirn = c('outputs/', 'data/', "libs",
									         'temp/', 'figs/', 'docs/'))
	mapply(makeGlobDir, namess, dirn)
