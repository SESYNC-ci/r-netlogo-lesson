install.packages("RNetLogo")
library(RNetLogo)
library(ggplot2)
nlDir <- "C:/Program Files/NetLogo 5.3.1/app/"
# setwd(nlDir)

nl.path <- nlDir
NLStart(nlDir)

model.path <- file.path("models", "Sample Models", "Earth Science","Fire.nlogo")
NLLoadModel(file.path(nl.path, model.path))

NLCommand("set density 70")    # set density value
NLCommand("setup")             # call the setup routine 
NLCommand("go")             


NLCommand("set density 60")
NLCommand("setup")
burned <- NLDoReportWhile("any? turtles", "go",
                          c("ticks", "(burned-trees / initial-trees) * 100"),
                          as.data.frame = TRUE, df.col.names = c("tick", "percent.burned"))

NLQuit()
# Plot with ggplot2
p <- ggplot(burned,aes(x=tick,y=percent.burned))
p + geom_line() + ggtitle("Non-linear forest fire progression with density = 60")

# run fire model 20 times for each value of 
# density between 55 and 65
# which is the region surrounding the phase transition
d <- seq(55, 65, 1)                  # vector of densities to examine
res <- rep.sim(d, 20)                # Run the simulation
