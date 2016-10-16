## ---- echo = F, message = F, result = 'hide'-----------------------------
library(yarrr)

## ---- fig.width = 6, fig.height = 5, echo = F, fig.align='center'--------
pirateplot(formula = weight ~ Diet,
           data = ChickWeight,
           theme = 1,
           bean.f.o = c(0, .1, .7, .1),
        #   bean.b.o = c(0, .1, 1, .1),
           point.o = c(.4, .1, .1, .1),
           avg.line.o = c(.5, .5, .5, .5),
           inf.f.o = c(.1, .1, .1, .9),
           bar.f.o = c(.1, .8, .1, .1),
           main = "4 Elements of a pirateplot", 
           pal = "google")


text(.7, 350, labels = "Points")
text(.7, 345, labels = "Raw Data", pos = 1, cex = .8)
arrows(.7, 310, .97, 270, length = .1)

text(1.4, 200, labels = "Bar/Line")
text(1.4, 200, labels = "Center", pos = 1, cex = .8)
arrows(1.4, 170, 1.54, 125, length = .1)

text(2.4, 250, labels = "Bean")
text(2.4, 250, labels = "Density", pos = 1, cex = .8)
arrows(2.4, 220, 2.85, 200, length = .1)

text(3.4, 300, labels = "Band")
text(3.4, 290, labels = "Inference\n95% HDI)", pos = 1, cex = .8)

arrows(3.4, 240, 3.8, 150, length = .1)

## ---- echo = FALSE-------------------------------------------------------
pp.elements <- data.frame('Argument' = c("formula", "data", "main", "pal", "theme", "inf"),
                          'Description' = c("A formula", "A dataframe",
                                            "Plot title", "A color palette", "A plotting theme", "Type of inference"),
                          'Examples' = c("height ~ sex + eyepatch, weight ~ Time", 
                                      "pirates, ChickWeight", 
                                      "'Pirate heights', 'Chicken Weights",
                                      "'xmen', 'black'",
                                      "0, 1, 2",
                                      "'ci', 'hdi', 'iqr'"
                                      )
                          )
knitr::kable(pp.elements, caption = "Main Pirateplot Arguments")

## ----fig.align='center', fig.width = 6, fig.height = 4-------------------
# Default theme
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme = 1,
           main = "theme = 1")

## ----fig.align='center', fig.width = 6, fig.height = 4-------------------
# Default theme
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme = 2,
           main = "theme = 2")

## ----fig.align='center', fig.width = 6, fig.height = 4-------------------
# Default theme
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme = 0,
           main = "theme = 0\nStart from scratch")

## ----fig.width = 6, fig.height = 4, fig.align = "center"-----------------
piratepal("all")

## ----fig.width = 6, fig.height = 4, fig.align = "center"-----------------
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           pal = "southpark", 
           theme = 2,
           main = "southpark color palette")

## ----fig.width = 6, fig.height = 4, fig.align = "center"-----------------
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           pal = gray(.1),
           main = "pal = gray(.1)")

## ----fig.width = 6, fig.height = 4, fig.align = "center"-----------------
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           main = "Selective color adjustment",
           pal = gray(c(rep(.9, 5), .1, rep(.9, 3), .1)))

## ---- echo = FALSE-------------------------------------------------------
pp.elements <- data.frame('element' = c("points", "beans", "bar", "inf", "avg.line"),
                          'color' = c("point.col, point.bg", 
                                      "bean.f.col, bean.b.col", 
                                      "bar.f.col, bar.b.col",
                                      "inf.f.col, inf.b.col",
                                      "avg.line.col"
                                      ),
                          "opacity" = c("point.o", 
                                        "bean.f.o, bean.b.o", 
                                        "bar.f.o, bar.b.o",
                                        "inf.f.o, inf.b.o", "avg.line.o")
                          )

knitr::kable(pp.elements, caption = "Customising plotting elements")

## ----fig.width = 6, fig.height = 4, fig.align = "center"-----------------
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme = 0,
           main = "Fully customized pirateplot",
           bean.f.o = .2, # Bean fill
           point.o = .2, # Points
           inf.f.o = .4, # Inference fill
           inf.b.o = .8, # Inference border
           avg.line.o = 1, # Average line
           inf.f.col = "white", # Inf fill col
           inf.b.col = "black", # Inf border col
           point.col = "black", # point col
           avg.line.col = "black", # avg line col
           point.cex = .5 # Small points
           )

## ----fig.width = 6, fig.height = 4, fig.align = "center"-----------------
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           main = "Adjusting an existing theme",
           theme = 2,  # Start with theme 2
           inf.f.o = 0, # Turn off inf fill
           inf.b.o = 0, # Turn off inf border
           point.o = .2,   # Turn up points
           point.col = "black" # Black points
           )

## ----fig.width = 6, fig.height = 4, fig.align = "center"-----------------
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           main = "Reducing a pirateplot to a barplot",
           theme = 0,   # Start from scratch
           bar.f.o = .7, # Just turn on the bars
           gl.col = gray(.7)
           )

## ---- echo = FALSE-------------------------------------------------------
pp.elements <- data.frame('element' = c("Background color", "Gridlines", "Quantiles", "Average line"),
                          'arguments' = c("back.col", 
                                      "gl.col, gl.lwd, gl.lty",
                                      "quant, quant.lwd, quant.col", "avg.line.fun"
                                      ),
                          "examples" = c("back.col = 'gray(.9, .9)'", 
                                        "gl.col = 'gray', gl.lwd = c(.75, 0), gl.lty = 1", 
                                        "quant = c(.1, .9), quant.lwd = 1, quant.col = 'black'",
                                        "avg.line.fun = median")
                          )

knitr::kable(pp.elements, caption = "Additonal pirateplot elements")

## ----fig.width = 6, fig.height = 4, fig.align = "center"-----------------
pirateplot(formula = weight ~ Time, 
           data = ChickWeight,
           main = "Chicken weights by Time",
           theme = 2, 
           back.col = gray(.95), # Add light gray background
           gl.col = "gray", # Gray gridlines
           gl.lwd = c(.75, .5),
           quant = c(.1, .9), # 10th and 90th quantiles
           quant.col = "black" # Black quantile lines
           )

## ----fig.width = 6, fig.height = 4, fig.align = "center"-----------------
pirateplot(formula = height ~ sex + eyepatch,
           data = pirates,
           main = "Pirate Heights",
           theme = 2,
           gl.col = gray(.7))

## ----fig.width = 7, fig.height = 5, fig.align = "center"-----------------
pirateplot(formula = time ~ genre + sequel,
           data = subset(movies, 
                         genre %in% c("Action", "Adventure", "Comedy") &
                         time > 0),
           main = "Movie running times",
           theme = 2,
           gl.col = gray(.7),
           inf.f.col = piratepal("basel")[1:3],
           bean.f.o = .1,
           point.o = .05,
           avg.line.o = 0
           )

