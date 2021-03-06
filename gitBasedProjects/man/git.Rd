\name{git}
\alias{git}
\alias{git.init}
\alias{git.remote}
\alias{git.push}
\alias{git.pull}
\alias{git.status}
\alias{git.diff}
\alias{git.add}
\alias{git.reset}
\alias{git.mv}
\alias{git.rm}
\alias{git.commit}
\alias{git.addCommit}
\alias{git.tag}
\alias{git.checkout}
\alias{git.log}
\alias{git.branch}
\alias{print.gitRevision}
\alias{print.gitRevisions}
\alias{summary.gitRevisions}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{git Commands}
\description{Runs common linux-based git commands from within R.}
\usage{
    git(commands, ..., help = FALSE, intern = FALSE, postIntern = FALSE)

    git.init(...)
    git.remote(...)

    git.push(...)
    git.pull(...)

    git.status(...)

    git.diff(files = '.', options = '', ...)
    git.add(files = '.', options = '', ...)
    git.reset(files = '.', options = '', ...)
    git.mv(files = '.', options = '', ...)
    git.rm(files = '.', options = '', ...)
    git.commit(message, messageType = '-m', ...)

    git.addCommit(files = '.', message, messageType = '-m',
                  addOptions = '', commitOptions = '')

    git.tag(version = NULL, message = version, messageType = '-m', ...)

    git.checkout(...)
    git.log(...)

    git.branch(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{commands}{string (or string vector) describing commands being sent to git}
  \item{...}{additional commands passed to \code{git} and ultimately to
             \code{\link{system}}}
  \item{files}{vector of files to be added (\code{git.add}), reset (\code{git.reset}), moved (\code{git.mv}) or removed (\code{git.rm})}
  \item{options}{options to be passed to git command}
  \item{version}{version number of ID passed to tag. Default of NULL displays all previous tags}
  \item{message}{commit or tag message}
  \item{messageType}{commit message type, default `-m' for command line message
                     or `-F' for file. See git documentation for more options.}
  \item{addOptions}{git commands used by git.add}
  \item{commitOptions}{git commands used by git.commit}
  \item{help}{a logical (not \code{NA}) which indicates whether show the full help description of a command}
  \item{intern}{a logical (not \code{NA}) which indicates whether to capture the output of the command as
                           an \code{R} character vector.
  \item{postIntern}{a logical (not \code{NA}). For git commands that do not change the status of the repo
                   (as does \code{git.commit}),
                    allows printing to console (i.e, \code{intern = FALSE}) followed by interning to
                    variable (i.e, \code{intern = TRUE})}
}
\details{
    \code{git.xxx} works much the same as \code{>> git xxx} in command line)
    It is therefore possible
    to intern the printout (i.e, capture the output of the command as an R
    character vector rather than print to console). git.addCommit is an additional command which performs
    the command line equivalent of \code{git add <<files>>; git commit -m <<message>>} in one line.
    \code{git.log()} output is to console and interned to a variable of class \code{gitRevisions}.
    \code{\link{print}} (i.e., \code{print.gitRevisions}) can be used to print a revision history.
    The function \code{\link{summary}} (i.e., \code{summary.gitRevisions}) can be used to obtain a list of revision numbers.
    See example below
}

\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
\note{These functions invoke commands and may not work on all OSs}

\seealso{
    \code{\link{gitRemoteURL}},
    \code{\link{gitVersionNumber}}
}
\examples{
    ## setup project
    makeDir('yayandwow')
    setwd('yayandwow')
    git.init()
    git.status()

    ## simple outpur file function
    write.text <- function(txt, filename, ...) cat(txt, file = filename, sep = "\n")

    ## write some example files
    write.text('yay', 'yay.txt', sep ='')
    write.text('wow', 'wow.txt', sep ='')

    ## commit these files
    git.add() ## adds all files
    git.reset('wow.txt') ## removed wow.txt of staging area
    git.commit('yay')

    git.add('wow.txt') ## adds wow.txt back
    git.commit('and wow')

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
