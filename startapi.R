library(plumber)
setwd('/Users/aritrabiswas/Desktop/uitestapi/')
r <- plumb("plumber.R")
r$run(port=8000)