# Make Shot charts
## title: short title
## description: a short description of what the script is about
## input(s): what are the inputs required by the script?
## output(s): what are the outputs created when running the script?

install.packages("jpeg")
install.packages("grid")

library(jpeg)
library(grid)
library(ggplot2)

#practice scatterplot
thompson_scatterplot <- ggplot(data = thompson) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))
thompson_scatterplot


court_file <- "../images/nba-court.jpg"

# create raste object
court_image <- rasterGrob(
  readJPEG(court_file),
  width = unit(1, "npc"),
  height = unit(1, "npc"))

# shot chart with court background
thompson_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()

thompson_shot_chart
