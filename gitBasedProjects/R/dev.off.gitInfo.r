dev.off.gitWatermark <- function(...) {
    gitWatermark(...)
    dev.off()
}


gitWatermark <- function(VersionNumber = TRUE, URL = TRUE,
                         timeAndDate = TRUE, comment = '',
                         x = 0.5, y = 0.5,
                         col = 'black',transparency = 0.8, srt = 45, ...) {

    txt = c('git Information:')
    if (VersionNumber) txt = c(txt, gitVersionNumber())
    if (URL          ) txt = c(txt, gitRemoteURL())
    if (timeAndDate  ) txt = c(txt, as.character(Sys.time()))
    txt = c(txt, comment)
    txt = paste(txt, collapse = '\n')

    par(fig = c(0, 1, 0, 1), mar = rep(0, 4))
    usr = par('usr')

    x = usr[1] + diff(usr[1:2]) * x
    y = usr[3] + diff(usr[3:4]) * y

    col = make.transparent(col, transparency)

    text(x, y, txt, srt = srt, col = col, xpd = TRUE,...)

}

make.transparent <- function(col, transparency) {
     ## Semitransparent colours
     tmp <- col2rgb(col)/255
     rgb(tmp[1,], tmp[2,], tmp[3,], alpha=1-transparency)
}
