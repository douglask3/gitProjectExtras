\name{git}
\alias{git}
\alias{git.push}
\alias{git.pull}
\alias{git.status}
\alias{git.commit}
\alias{git.add}
\alias{git.addCommit}

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
    \code{git} is essentially the same as system('git <<commands>>')
    \code{git.xxx} works much the same as git xxx in command line)
}

\author{Douglas Kelley \email{douglas.i.kelley@gmail.com}}
\note{These function invoke commands and may not work on all systems}

\seealso{


    \code{\link{gitRemoteURL}}
    \code{\link{gitVersionNumber}}
}
\examples{
list.dirs()
makeDir('yayandwow')
list.dirs()
}
\keyword{ Directories }
