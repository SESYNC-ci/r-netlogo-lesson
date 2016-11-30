#######################
#   Using RNetLogo    #
#######################

install.packages("RNetLogo")
library(...)

# define where is NetLogo is
# installed on your computer

# for Windows users
... <- "C:/Program Files/NetLogo 5.3.1/app"

# for Mac users
#

# Start an instance of RNetLogo

...(nl_path, gui = TRUE)

# Load a model

... <- file.path("models", "Sample Models", "Biology","Wolf Sheep Predation.nlogo")

...(file.path(nl_path, model_path))

#################
#   Commands    #
#################

# Execute commands

...("setup")

NLCommand(...)

# Repeat commands for multiple iterations

NLDoCommand(iterations = 50, "go")

# Use an R object in a command

init_sheep <- 50
NLCommand("set initial-number-sheep", init_sheep, "setup")

# Reporting

NLReport("count sheep")

# Combine commands and reporting

NLDoReport(iterations = 5, command = "go", reporter = "count sheep")

# Return results as a data frame

NLCommand("setup")

sheep_count <- NLDoReport(iterations = 100,
                          command = "go",
                          reporter = c("ticks", "count sheep", "count wolves"),
                          as.data.frame = TRUE,
                          df.col.names = c("tick", "sheep", "wolves"))

tail(sheep_count)

#########################
#  Use Conditionals     #
#########################

NLCommand("setup")

sim_results <- NLDoReportWhile(condition = "any? wolves",
                               command = "go", 
                               reporter = c("ticks", "count sheep", "count wolves"),
                               as.data.frame = TRUE,
                               df.col.names = c("tick", "sheep", "wolves"))

head(sim_results)


################################
#  Run and Repeat Simulations  #
################################

my_sim <- function(n_wolves){
  NLCommand("setup", "set initial-number-wolves", n_wolves)
  NLDoCommandWhile("any? wolves and any? sheep and ticks < 400", "go")
  ret <- NLReport(reporter = "ticks")
  return(ret)
}

my_sim(100)

# Replicate

replicate(n = 5, expr = my_sim(100))

# Replicate using different parameters

n_wolves <- seq(100, 250, 50)

reps <- 5

rep_sim <- function(n_wolves, reps){
  results <- lapply(n_wolves, function(x) replicate(n = reps, expr = my_sim(x)))
  return(results)
}

sim_results <- rep_sim(n_wolves, reps)

###########################
#    Plot results         #
###########################

# prepare data for plotting

nw <- rep(n_wolves, each = reps)

df <- data.frame(as.factor(nw), unlist(sim_results))

names(df) <- c("n_wolves", "time")

head(df)

# plot using ggplot

install.packages("ggplot2")
library(ggplot2)

ggplot(df, aes(x = n_wolves, y = time)) + 
  geom_boxplot()

##################################
#   Data frame to Netlogo List   #
##################################

# create a data.frame with four sample vectors
list1 <- c(1,2,3,4,5)
list2 <- c(6,7,8,9,10)
list3 <- c('test1','test2','test3','test4','test5')
list4 <- c(TRUE,FALSE,TRUE,FALSE,TRUE)

sample.df <- data.frame(list1,list2,list3,list4)
# 
# # fill automaticlly the four NetLogo list with the names "list1", "list2", "list3" and "list4" (defined in "globals")
# # with the values of the corresponding columns of the data.frame 
NLDfToList(sample.df)
# 
# # show content of the NetLogo list in NetLogo Command Center
# NLCommand("show-lists")

#############
#   Agents  #
#############

# use NLGetAgentSet()
# arguments are agent.var, agentset
# optional arguments are as.data.frame, agents.by.row, as.vector

#############
#  Patches  #
#############

# use NLGetPatches()
# use NLSetPatches()

