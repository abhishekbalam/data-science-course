# The purpose of the script to load and analyse mpg vs hp from the mtcars dataset

library(ggplot2)
library(plotly)
library(htmlwidgets)

# Load Data
cars_data<-mtcars

# Plotting Data
plot(cars_data$mpg, cars_data$hp)

# Fitting Data
mpg_hp_regression <- lm(data=cars_data, formula = mpg ~ hp)

# Exporting Data
pdf(file="../outputs/mpg_hp_plot.pdf")
plot(cars_data$mpg, cars_data$hp)
dev.off()

# Better plot with ggplot2.
# Defining the plot details
mpg_hp_reg_plot <- ggplot(data=cars_data , aes(x=mpg, y=hp))+
  geom_point()+
  geom_smooth(method="lm")+
  ggtitle("HP vs MPG from mtcars")
mpg_hp_reg_plot

# Making the plot object
mpg_hp_reg_plot_interactive <- ggplotly(mpg_hp_reg_plot)
mpg_hp_reg_plot_interactive

# Save it to a stand-alone html file.
saveWidget(mpg_hp_reg_plot_interactive, file="../outputs/mpg_hp_plot_interactive.html")