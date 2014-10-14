source_all_libs <- function(path='libs/',trace=TRUE,...) {
	for (nm in list.files(path, pattern = "\\.[RrSsQq]$")) {
		if(trace) cat(nm,":")
		try(source(file.path(path, nm), ...))
		if(trace) cat("\n")
	}
}