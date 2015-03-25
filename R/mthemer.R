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
mthemer <- function() {
  theme_bw() +
    theme(text = element_text(colour = "#22373A", size = 12)
          ,line = element_line(colour = "#22373A", size = 0.5,
             linetype = 1, lineend = "butt")
          ,rect = element_rect(fill = "white", colour = "#22373A",
             size = 0.5, linetype = 1)
          ,axis.text = element_text(size = rel(0.8), colour =
             "#22373A")
          ,axis.title = element_text(size = rel(1.2))
          ,plot.background = element_blank()
          ## ,panel.background = element_blank()
          ## ,panel.border = element_blank()
          ## ,panel.grid = element_blank()
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
  scale_color_manual(values=c("#22373A", "#EB811B",
                       "#604C38", "#332288", "#6699CC",
                       "#44AA99", "#661100", "#882255"))
}

