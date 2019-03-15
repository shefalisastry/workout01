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


## Iguodala Shot Chart ##
iguodala_scatterplot <- ggplot(data = iguodala) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))
iguodala_scatterplot

iguodala_shot_chart <- ggplot(data = iguodala) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Andre Iguodala (2016 season)') +
  theme_minimal()

iguodala_shot_chart

setwd()
ggsave("../images/andre-iguodala-shot-chart.pdf", width=6.5, height=5)


## Draymond Green Shot Chart ##
green_scatterplot <- ggplot(data = green) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))
green_scatterplot

green_shot_chart <- ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()

green_shot_chart
ggsave("../images/draymond-green-shot-chart.pdf", width=6.5, height=5)



## Draymond Green Shot Chart ##
green_scatterplot <- ggplot(data = green) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))
green_scatterplot

green_shot_chart <- ggplot(data = green) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Draymond Green (2016 season)') +
  theme_minimal()

green_shot_chart
ggsave("../images/draymond-green-shot-chart.pdf", width=6.5, height=5)


## Kevin Durant Shot Chart ##
durant_scatterplot <- ggplot(data = durant) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))
durant_scatterplot

durant_shot_chart <- ggplot(data = durant) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Kevin Durant (2016 season)') +
  theme_minimal()

durant_shot_chart
ggsave("../images/kevin-durant-shot-chart.pdf", width=6.5, height=5)


## Klay Thompson Shot Chart ##

thompson_scatterplot <- ggplot(data = thompson) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))
thompson_scatterplot

thompson_shot_chart <- ggplot(data = thompson) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Klay Thompson (2016 season)') +
  theme_minimal()

durant_shot_chart
ggsave("../images/klay-thompson-shot-chart.pdf", width=6.5, height=5)


## Stephen Curry Shot Chart ##
curry_scatterplot <- ggplot(data = curry) +
  geom_point(aes(x = x, y = y, color = shot_made_flag))
curry_scatterplot

curry_shot_chart <- ggplot(data = curry) +
  annotation_custom(court_image, -250, 250, -50, 420) +
  geom_point(aes(x = x, y = y, color = shot_made_flag)) +
  ylim(-50, 420) +
  ggtitle('Shot Chart: Stephen Curry (2016 season)') +
  theme_minimal()

durant_shot_chart
ggsave("../images/stephen-curry-shot-chart.pdf", width=6.5, height=5)