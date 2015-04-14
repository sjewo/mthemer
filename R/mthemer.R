##' Style ggplot2 plots to match mtheme
##'
##' mtheme is an excellent lightweight beamer theme for latex
##' slides. This package complements it with a matchin ggplot2 theme.
##' @title mtheme styled ggplots
##' @return a ggplot2 theme
##' @import ggplot2
##' @examples
##' library(ggplot2)
##' ggplot(iris) +
##' geom_point(aes(x = Sepal.Length, y = Sepal.Width)) +
##' mthemer()
##' @export
mthemer <- function(...) {
  theme_bw(...) +
    theme(text = element_text(colour = "#22373A")
          ,line = element_line(colour = "#22373A", size = 0.5,
             linetype = 1, lineend = "butt")
          ,rect = element_rect(fill = "white", colour = "#22373A",
             size = 0.5, linetype = 1)
          ,axis.text = element_text(size = rel(0.8), colour =
             "#22373A")
          ,axis.title = element_text(size = rel(1.2))
          ,plot.background = element_blank()
          ,legend.background = element_blank()
          ## ,panel.background = element_blank()
          ## ,panel.border = element_blank()
          ## ,panel.grid = element_blank()
          )
  
}

##' mthemer colors for plotting things
##'
##' Some nice colors taken from mtheme
##' @title Nice Colors
##' @return a list
##' @export
mtcols <- function() {
  list(
     darkgreen  = "#22373A"
    ,orange     = "#EB811B"
    ,lightblue  = "#6699CC"
    ,redbrown   = "#661100"
    ,lightgreen = "#44AA99"
    ,darkbrown  = "#604C38"
    ,darkblue   = "#332288"
    ,violet     = "#882255"
    )
}

##' An alternative discrete color scale matching mthemer
##'
##' An alternative discrete color scale matching the mthemer ggplot2
##' theme that goes nicely with the mtheme beamer theme.
##' @title mthemer discrete colors
##' @return a scale_color_manual
##' @export
##' @aliases scale_color_m1
scale_colour_m1 <- function() {
  cols <- 
  scale_color_manual(values=unname(unlist(mtcols())))
}

