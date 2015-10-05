git <- function(command) {
    command = paste('git', command)
    system(command)
}

git.status <- function(statusOptions= '') {
    command = paste('git status', statusOptions)
    system(command)
}

git.commit <- function(message, messageType = '-m', commitOptions = '') {
    command = paste('git commit', messageType, commitOptions, message)
    system(command)
}

git.add <- function(files ='.', addOptions = '') {
    command = paste('git add', addOptions, files)
    system(command)
}

git.addCommit <- function(files = '.', message, messageType = '-m',
                          addOptions = '', commitOptions = '') {

    git.add   (files, addOptions)
    git.commit(message, messageType, commitOptions)
}
