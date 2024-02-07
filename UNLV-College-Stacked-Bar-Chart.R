# Install packages
install.packages("data.table")
install.packages("ggplot2")

# Load libraries
library(data.table)
library(ggplot2)

# Reads CSV file and sets it to the data variable
MajorFrequency <- fread("Major-Data.csv")

# Creates a 2D Stacked bar chart for frequency of majors by college/school
ggplot(MajorFrequency, aes(x = College, y = Frequency, fill = `Major`)) +
  geom_bar(stat = "identity") +

# Flips the X and Y axes to make the stacked bar chart horizontal
  coord_flip() +  
  
  labs(x = "College/School",  y = "Total Frequency",  fill = "Major") +

  # Adds legend title
  guides(fill = guide_legend(title = "Major")) +  
  
  # Theme settings to make the stacked bar chart visually organized
  theme_minimal() +
  
  theme(
    legend.position = "bottom",
    
    # Adjusts font size for axes labels, axes titles, and legend title
    plot.title = element_text(hjust = 0.5),
    axis.title = element_text(size = 12),  
    legend.text = element_text(size = 10),
    legend.title = element_text(size = 12, angle = 90, vjust = 2, hjust = 0.5),
    axis.text.x = element_text(size = 10), 
    axis.text.y = element_text(size = 10)  
  )




