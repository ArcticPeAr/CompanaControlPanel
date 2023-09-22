# Load required library
library(ggplot2)

# Ask for user input
plot_type <- readline("Please enter the type of plot (e.g. 'line', 'bar'): ")
x_values <- readline("Please enter the x values separated by commas (e.g. 1,2,3): ")
y_values <- readline("Please enter the y values separated by commas (e.g. 4,5,6): ")

# Convert user input strings to vectors
x_values <- as.numeric(strsplit(x_values, ",")[[1]])
y_values <- as.numeric(strsplit(y_values, ",")[[1]])

# Create a data frame
df <- data.frame(x=x_values, y=y_values)

# Create a ggplot object based on user input
if (plot_type == 'line') {
  p <- ggplot(df, aes(x=x, y=y)) + geom_line()
} else if (plot_type == 'bar') {
  p <- ggplot(df, aes(x=factor(x), y=y)) + geom_bar(stat="identity")
} else {
  cat("Unsupported plot type. Please enter 'line' or 'bar'.\n")
}

# Save the plot as a PNG file
ggsave("output_plot.png", plot = p)

cat("Plot has been saved as 'output_plot.png'\n")
 
