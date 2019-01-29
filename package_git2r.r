library(git2r)

git.add <- function(...) add(repository(), ...)
git.commit <- function(...) commit(repository(), ...)
git.status <- function(...) status(...)
git.diff <- function() cat(diff(repository(), as_char=TRUE))
git.push <- function(username, password, ...) push(repository(), credentials=cred_user_pass(username, password), ...)

gitRemoteURL <- function(...)git2r::remote_url(...)

gitVersionNumber <- function(short = TRUE, ...) {
    no = git2r::last_commit(...)[[1]]
    if (short) no = substr(no, 1, 7)
    return(no)
}

git.rm <- function(...) git2r::rm_file(repository(), ...)

git.mv <- function(filesFrom, filesTo,...) {
    gmv <- function(fileFrom, fileTo) {
        file.copy(fileFrom, fileTo)
        git.add(file, ...)
        git.rm(file, ...)
    }
    mapply(gmv, filesFrom, filesTo)
}