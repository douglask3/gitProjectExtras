gitVersionNumber <- function(short = TRUE, gitLoc = ".git") {
	gitLoc   = findProjectPath(gitLoc)
	headPath = file.path(gitLoc, "HEAD")
	headAt   = as.matrix(read.table(headPath, sep = " ",
								    stringsAsFactors = FALSE))

	if (length(headAt) == 1) rev = headAt
	else {
		headAt = file.path(gitLoc, headAt[2])
		if (!file.exists(headAt)) return('no commit yet')
		rev = as.matrix(read.table(headAt))
	}
	if (short) rev = substr(rev, 1, 7)

	return(rev[1])
}
