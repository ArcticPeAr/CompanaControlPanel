import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np

# Ask for user input
plot_type = input("Please enter the type of plot (e.g. 'line', 'bar'): ")
x_values = input("Please enter the x values separated by commas (e.g. 1,2,3): ")
y_values = input("Please enter the y values separated by commas (e.g. 4,5,6): ")

# Convert user input strings to lists
x_values = [float(x) for x in x_values.split(',')]
y_values = [float(y) for y in y_values.split(',')]

# Create a Seaborn plot based on user input
if plot_type == 'line':
    sns.lineplot(x=x_values, y=y_values)
elif plot_type == 'bar':
    sns.barplot(x=x_values, y=y_values)
else:
    print("Unsupported plot type. Please enter 'line' or 'bar'.")

# Save the plot as a PNG file
plt.savefig('output_plot.png')

print("Plot has been saved as 'output_plot.png'")