git <- function(command) {
    command = paste('git', command, collapse = ' ')
    system(command)
}

git.push <- function(...) git(c('push', ...))
git.pull <- function(...) git(c('pull', ...))

git.status <- function(...) git(c('status', ...))

git.commit <- function(message, messageType = '-m', commitOptions = '') {
    message = paste('"', message, '"', sep = "")
    command = c('commit', messageType, commitOptions, message)
    git(command)
}

git.add <- function(files ='.', addOptions = '') {
    command = paste('add', addOptions, files)
    git(command)
}

git.addCommit <- function(files = '.', message, messageType = '-m',
                          addOptions = '', commitOptions = '') {

    git.add   (files, addOptions)
    git.commit(message, messageType, commitOptions)
}
