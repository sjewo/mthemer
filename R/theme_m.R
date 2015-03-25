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
##' theme_m()
##' @export
theme_m <- function() {
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
