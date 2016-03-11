sourceAllLibs <- function(path ='libs/', trace = TRUE, stopIfError = TRUE,
                          ...) {
	for (nm in list.files(path, pattern = "\\.[RrSsQq]$")) {
		if(trace) cat(nm, ":")

		if (stopIfError) source(file.path(path, nm), ...)
			else try(source(file.path(path, nm), ...))

		if(trace) cat("\n")
	}
}
