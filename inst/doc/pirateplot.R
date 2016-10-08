## ---- echo = F, message = F, result = 'hide'-----------------------------
library(yarrr)

## ---- fig.width = 6, fig.height = 6, echo = F, fig.align='center'--------
pirateplot(formula = weight ~ Diet,
           data = ChickWeight,
           theme.o = 1,
           bean.o = c(0, .1, 1, .1),
           point.o = c(.4, .1, .1, .1),
           line.o = c(.5, .5, .5, .5),
           inf.o = c(.1, .1, .1, .9),
           bar.o = c(.1, .8, .1, .1),
           main = "4 Elements of a pirateplot()", 
           pal = "google")


text(.7, 350, labels = "Points")
text(.7, 350, labels = "Raw Data", pos = 1, cex = .8)
arrows(.7, 320, .97, 270, length = .1)

text(1.35, 200, labels = "Bar")
text(1.35, 200, labels = "Center", pos = 1, cex = .8)
arrows(1.35, 170, 1.54, 125, length = .1)

text(2.4, 250, labels = "Bean")
text(2.4, 250, labels = "Density", pos = 1, cex = .8)
arrows(2.4, 220, 2.85, 200, length = .1)

text(3.4, 300, labels = "Inf")
text(3.4, 300, labels = "Inference", pos = 1, cex = .8)

arrows(3.4, 270, 3.8, 150, length = .1)

## ---- echo = F, message = F, results='hide'------------------------------
library(yarrr)

## ---- fig.width = 6, fig.height = 5, fig.align='center'------------------
pirateplot(formula = time ~ cleaner + type,
           data = poopdeck,
           main = "Poopdeck Cleaning Time")

## ---- fig.width = 6, fig.height = 6--------------------------------------
pirateplot(formula = weight ~ Diet,
           data = ChickWeight,
           pal = "xmen")   # Use the xmen color palette

## ---- fig.width = 6, fig.height = 5, fig.align='center'------------------
pirateplot(formula = weight ~ Diet,
           data = ChickWeight,
           pal = "black")

## ---- fig.width = 6, fig.height = 6, fig.align='center'------------------
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           pal = "southpark",   # Use the southpark color palette,
           point.col = "gray",  # gray points
           bean.border.col = "gray", # gray bean borders
           bar.col = "gray")   # gray bars

## ---- fig.width = 6, fig.height = 6, fig.align='center'------------------
pirateplot(formula = weight ~ Diet,
           data = ChickWeight,
           theme.o = 2, # Use opacity theme 2
           main = "Opacity themes with theme.o")

## ---- fig.width = 6, fig.height = 6, eval = F, echo = F, fig.align='center'----
#  pirateplot(formula = weight ~ Diet,
#             data = ChickWeight,
#             theme.o = 0, # Turn off all opacities,
#             point.o = .1, # Turn point opacities up to .1
#             inf.o = .3, # Turn inf opacities up to .3
#             bean.o = .9, # Turn beans way up
#             main = "Changing opacities individually with point.o, inf.o (etc.)")

## ---- fig.width = 6, fig.height = 6, fig.align='center'------------------
pirateplot(formula = weight ~ Diet,
           data = ChickWeight,
           theme.o = 0, # Turn off all opacities,
           point.o = .1) # Turn point opacities up to .1

## ---- fig.width = 6, fig.height = 6, fig.align='center'------------------
pirateplot(formula = weight ~ Diet,
           data = ChickWeight,
           theme.o = 0, 
           point.o = .1,
           bean.o = .5) # Turn on beans to .5

## ---- fig.width = 6, fig.height = 6, fig.align='center'------------------
pirateplot(formula = weight ~ Time,
           data = ChickWeight,
           theme.o = 0, 
           bar.o = .5, # Turn bar up to .5
           inf.o = .8, # Turn 95% HDI to .8
           pal = gray(.1))

## ---- fig.width = 6, fig.height = 6, fig.align='center'------------------
pirateplot(formula = weight ~ Diet,
           data = ChickWeight,
           pal = "basel",
           theme.o = 0, # Turn off all opacities,
           point.o = c(.1, .05, .2, .05), # Selectively turn up point opacities
           inf.o = c(.9, .1, .9, .1), # Selectively turn up inf opacities
           bean.o = c(1, .1, 1, .1), # Selective bean opacity adjustment
           main = "Adjusting opacities between groups")

## ---- fig.width = 10, fig.height = 6-------------------------------------
pirateplot(formula = weight ~ Diet + Time,
           data = ChickWeight,
           pal = "google",
           theme.o = 1, # Turn off all opacities,
           back.col = gray(.96),
           gl.col = "white",
           main = "back.col, gl.col")

