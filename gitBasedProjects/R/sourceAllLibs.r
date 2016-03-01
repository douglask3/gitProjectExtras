sourceAllLibs <- function(path ='libs/', trace = TRUE, stopIfError = FALSE,
                          ...) {
	for (nm in list.files(path, pattern = "\\.[RrSsQq]$")) {
		if(trace) cat(nm, ":")

		if (stopIfError) try(source(file.path(path, nm), ...))
			else source(file.path(path, nm), ...)

		if(trace) cat("\n")
	}
}
