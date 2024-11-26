setwd("C:/Assignment")
print(getwd())

himel <- read.csv("Cleaned_UnitedAirlinesData(updated).csv")

print(himel$Salaries.and.Wages[3:10])

# Plot histogram

# Create data for the graph.
v <- himel$Salaries.and.Wages[3:10]


# Create the histogram.
hist(v, xlab = "Salaries and Wages", col = "green",
     border = "black", xlim = c(280, 380),
     ylim = c(0, 4), breaks = 20)
