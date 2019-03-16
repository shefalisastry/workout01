## title: short title
## description: a short description of what the script is about
## input(s): what are the inputs required by the script?
## output(s): what are the outputs created when running the script?

getwd()
setwd("Users/rsast/Desktop/workout01/data1")

setwd("C:/Users/rsast/Desktop/workout01/data1")

getwd()


#Curry
curry <- read.csv("stephen-curry.csv", stringsAsFactors = FALSE)
curry$name <- "Stephen Curry"
curry$shot_made_flag[curry$shot_made_flag == "n"] <- "shot_no"
curry$shot_made_flag[curry$shot_made_flag == "y"] <- "shot_yes"
curry$minute <- curry$period*12 - curry$minutes_remaining
write.csv(curry)
sink( file = "stephen-curry.txt")
summary(curry)
sink()


#Iguodala
iguodala <- read.csv("andre-iguodala.csv", stringsAsFactors = FALSE)
iguodala$name <- " Andre Iguodala"

iguodala$shot_made_flag[iguodala$shot_made_flag == "n"] <- "shot_no"
iguodala$shot_made_flag[iguodala$shot_made_flag == "y"] <- "shot_yes"
iguodala$minute <- iguodala$period*12 - iguodala$minutes_remaining
sink( file = "andre-iguodala.txt")
summary(iguodala)
sink()

#Durant
durant <- read.csv("kevin-durant.csv", stringsAsFactors = FALSE)
durant$name <- "Kevin Durant"
durant$shot_made_flag[durant$shot_made_flag == "n"] <- "shot_no"
durant$shot_made_flag[durant$shot_made_flag == "y"] <- "shot_yes"
durant$minute <- durant$period*12 - durant$minutes_remaining
sink( file = "kevin-durant.txt")
summary(durant)
sink()

#Thompson
thompson <- read.csv("klay-thompson.csv", stringsAsFactors = FALSE)
thompson$name <- "Klay Thompson"
thompson$shot_made_flag[thompson$shot_made_flag == "n"] <- "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag == "y"] <- "shot_yes"
thompson$minute <- thompson$period*12 - thompson$minutes_remaining
sink( file = "klay-thompson.txt")
summary(thompson)
sink()

#Green
green <- read.csv("draymond-green.csv", stringsAsFactors = FALSE)
green$name <- "Draymond Green"
green$shot_made_flag[green$shot_made_flag == "n"] <- "shot_no"
green$shot_made_flag[green$shot_made_flag == "y"] <- "shot_yes"
green$minute <- green$period*12 - green$minutes_remaining
sink( file = "draymond-green.txt")
summary(green)
sink()

shots_data_summary <- rbind(curry, iguodala, durant, thompson, green)
write.csv(shots_data_summary,"../output/shots-data-summary.txt")
sink( file = "shots-data-summary.txt")
summary(shots_data_summary)
sink()

shots_data_summary

