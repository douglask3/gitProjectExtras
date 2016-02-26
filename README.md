# gitProjectExtras

## gitBasedProjects - for R

Provides extra functions for integrating R with git tracked projects. Allows linking code and outputs with information about git revision numbers and remote location. Also contains tools for setting up a project structure when freshly cloned. Feel free to clone and contribute to the package:

    git clone https://github.com/douglask3/gitProjectExtras


### Install and use

To insatll the package, first make sure you have R/Rstudio running and you have installed and loaded devtools:

    install.packages('devtools')
    library(devtools)

Then run the following command to install and load Benchmark Metrics:

    install_github('douglask3/gitProjectExtras/gitBasedProjects')
    library(gitBasedProjects)

To see help files and examples of how to use:

    ?gitBasedProjects

### Main function

#### Current git revision number

`gitVersionNumber()` will return the current version number see `?gitVersionNumber` for more options.


#### Project URL

If you git based project is stored on a site such as github or bitbucket, `gitRemoteURL()` will return the sites URL. number see `?gitRemoteURL` for more options.

#### In line git calls from R

Most (and soon all) the command line git calls are avaiable within R. For example, `git.status()` is equivalent to the command line call `git status`. Files can be added and commited using:

    git.add(c('file1', 'file2', ...))
    git.commit("message")
    
or even:

    git.addCommit(c('file1', 'file2', ....), "message")
    
which is equivalent to the following inc ommand line:

    git add file1 file2 ...
    git commit -m "message"
    
see `?git` for more commands and options.




## More Info
[click here](http://douglask3.github.io/docs/gitProjectExtras-manual.pdff) for documentation.


# Contact details
[Douglas Kelley](mailto:douglas.i.kelley@gmail.com)

