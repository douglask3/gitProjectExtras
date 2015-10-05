git <- function(commands) {
    commands = paste(c('git', commands), collapse = ' ')

    system(commands)
}

git.push   <- function(...) git(c('push', ...))
git.pull   <- function(...) git(c('pull', ...))


git.status <- function(...) git(c('status', ...))


git.commit <- function(message, messageType = '-m', ...) {
    message  = paste('"', message, '"', sep = "")
    commands = c('commit', messageType, ..., message)

    git(commands)
}

git.add    <- function(files ='.', ...) {
    commands  = paste('add', ..., files)
    git(commands)
}

git.addCommit <- function(files = '.', message, messageType = '-m',
                          addOptions = '', commitOptions = '') {

    git.add   (files, addOptions)
    git.commit(message, messageType, commitOptions)
}
