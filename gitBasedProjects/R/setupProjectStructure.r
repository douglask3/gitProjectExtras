setupProjectStructure <- function(names = paste(dirn,'_dir',sep=""),
					                dirn = c('outputs', 'data', "libs",
									         'temp', 'figs', 'docs'))
	mapply(makeGlobDir, names, paste(dirn, '/', sep = ''))
