setwd("C:/Assignment")
print(getwd())

himel <- read.csv("Cleaned_UnitedAirlinesData(updated).csv")

print(himel$Salaries.and.Wages[3:18])
#
data <- seq(290,370,by = 20 )

print(data)


table <- cut(himel$Salaries.and.Wages[3:10], data = data, right = FALSE)
frequency <- table(table)

# Create a frequency table data frame
freq_df <- data.frame(Class = names(frequency), Frequency = as.vector(frequency))
print(freq_df)

