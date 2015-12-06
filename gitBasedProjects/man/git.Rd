\name{git}
\alias{git}
\alias{git.init}
\alias{git.remote}
\alias{git.push}
\alias{git.pull}
\alias{git.status}
\alias{git.diff}
\alias{git.add}
\alias{git.mv}
\alias{git.rm}
\alias{git.commit}
\alias{git.addCommit}
\alias{git.checkout}
\alias{git.log}
\alias{print.gitRevision}
\alias{print.gitRevisions}
\alias{summary.gitRevisions}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{git Commands}
\description{Runs git commands from within R.}
\usage{
    git(commands, ...)
    
    git.init(...)
    git.remote(...)

    git.push(...)
    git.pull(...)

    git.status(...)

    git.diff(files = '.', ...)
    git.add(files = '.', ...)
    git.mv(files = '.', ...)
    git.rm(files = '.', ...)
    git.commit(message, messageType = '-m', ...)

    git.addCommit(files = '.', message, messageType = '-m',
                  addOptions = '', commitOptions = '')

    git.checkout(...)
    git.log(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{commands}{string (or string vector) describing commands being sent to git}
  \item{...}{additional commands passed to \code{git} and ultimatly to
             \code{\link{system}}}
  \item{files}{vector or files to be added (\code{git.add}), moved (\code{git.mv}) or removed (\code{git.rm})}
  \item{message}{commit message}
  \item{messageType}{commit message type, default '-m' for command line message
                     or '-F' for file. See git documentation for more options.}
  \item{addOptions}{git commands used by git.add}
  \item{commitOptions}{git commands used by git.commit}
}
\details{
    \code{git} is essentially the same as \code{system('git <<commands>>')}
    \code{git.xxx} works much the same as \code{git xxx} in command line)
    Arguments are also passed to \code{\link{system}}. It is therefore possible
    to intern the printout (i.e, capture the output of the command as an R
    character vector rather than print to console). For \code{git.log()},
    output is to console and interned to R vector. See example below
}

\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
\note{These functions invoke commands and may not work on all OSs}

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
    log = git.log()

    print(log)
    print(log[[1]])
    summary(log)
}
\keyword{ Directories }
