\name{git}
\alias{git}
\alias{git.push}
\alias{git.pull}
\alias{git.status}
\alias{git.commit}
\alias{git.add}
\alias{git.addCommit}
\alias{git.log}
\alias{git.checkout}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{git Commands}
\description{runs git commands from R}
\usage{
    git(commands)

    git.push(...)
    git.pull(...)

    git.status(...)

    git.add(files = '.', ...)
    git.commit(message, messageType = '-m', ...)

    git.addCommit(files = '.', message, messageType = '-m',
                  addOptions = '', commitOptions = '')

    git.log(...)
    git.checkout(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{commands}{string (or string vector) describing commands being sent to git}
  \item{...}{additional commands passed to \code{git}}
  \item{files}{vector or files to be added}
  \item{message}{commit message}
  \item{messageType}{commit message type, default '-m' for command line message
                     or '-F' for file. See git documentation for more options.}
  \item{addOptions}{git commands used by git.add}
  \item{commitOptions}{git commands used by git.commit}
}
\details{
    \code{git} is essentially the same as \code{system('git <<commands>>')}
    \code{git.xxx} works much the same as \code{git xxx} in command line)
}

\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
\note{These function invoke commands and may not work on all systems}

\seealso{


    \code{\link{gitRemoteURL}}
    \code{\link{gitVersionNumber}}
}
\examples{
    ## setup project
    makeDir('yayandwow')
    setwd('yayandwow')
    git('init')
    git.status()

    ## simple outpur file function
    write.text <- function(txt, filename, ...) cat(txt, file = filename, sep = "\n")

    ## write some example files
    write.text('yay', 'yay.txt', sep ='')
    write.text('wow', 'wow.txt', sep ='')

    ## commit these files
    git.add() ## adds all files
    git.commit('yay and wow')

    ## add new file and change old one
    write.text('yayandwow', 'newFile.txt', sep ='')
    write.text('wownotyay', 'wow.txt', sep ='')

    ## show status and commit new file
    git.status()
    git.add('newFile.txt')
    git.commit('yayandwow')

    ## show status and previous commits
    git.status()
    gitVersionNumber()
    git.log()
}
\keyword{ Directories }
