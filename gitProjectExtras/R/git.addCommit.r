git <- function(command) {
    command = paste('git', command, collapse = ' ')
    system(command)
}

git.status <- function(statusOptions= '') {
    command = c('status', statusOptions)
    git(command)
}

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
