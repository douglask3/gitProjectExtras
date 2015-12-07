git          <- function(commands, ..., intern = FALSE, postIntern = FALSE) {
    commands = paste(c('git', commands), collapse = ' ')
    
    if (postIntern) {
        out = system(commands, ...)
        out = system(commands, intern = TRUE, ...)
    } else out = system(commands, intern = intern, ...)
    invisible(out)
}

git.init     <- function(...) git(c('init', ...))
git.push     <- function(...) git(c('push', ...))
git.pull     <- function(...) git(c('pull', ...))


git.status   <- function(...) git(c('status', ...))
git.remote   <- function(...) git(c('remote', ...))


git.commit   <- function(message, messageType = '-m', ...) {
    message  = paste('"', message, '"', sep = "")
    commands = c('commit', messageType, ..., message)

    git(commands)
}

git.add      <- function(files ='.', ...)
    gitOptionCommandFile('add', files, ...)

git.rm       <- function(files ='.', ...)
    gitOptionCommandFile('rm', files, ...)

git.mv       <- function(files ='.', ...)
    gitOptionCommandFile('mv', files, ...)

git.diff      <- function(files ='.', ...)
    gitOptionCommandFile('diff', files, ...)

gitOptionCommandFile <- function(command, files, ...) {
    commands  = c(command, ..., files)
    git(commands)
}

git.addCommit<- function(files = '.', message, messageType = '-m',
                          addOptions = '', commitOptions = '') {

    git.add   (files, addOptions)
    git.commit(message, messageType, commitOptions)
}

git.log      <- function(...) {
    out   = git(c('log', ...), postIntern = TRUE)
    index = which(sapply(out, substr, 1,6) == "commit")
    index = c(index, length(out) + 1)
    commits = list()
    for (i in 2:length(index)) {
        commit = out[index[i - 1]:(index[i] - 1)]
        class(commit) = 'gitRevision'
        commits = c(commits, list(commit))
    }
    rnms = head(names(index), -1)
    rnms = sapply(rnms, function(i) strsplit(i, 'commit ')[[1]][2])

    names(commits) = rnms
    class(commits) = 'gitRevisions'
    invisible(commits)
}

print.gitRevision    <- function(x, ...) printCatN(x,...)

print.gitRevisions   <- function(x, ...) {
    printRevision <- function(i) {
        print.gitRevision(i)
        cat("=============================\n\n")
    }
    sapply(head(x, -1), printRevision)
    print.gitRevision(tail(x,1))
}

summary.gitRevisions <- function(object, ...) printCatN(names(object), ...)


printCatN <- function(x, ...)
    invisible(sapply(x, function(i) cat(paste(i,'\n'), ...)))

git.checkout <- function(...) git(c('checkout', ...))