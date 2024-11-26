setwd("C:/Assignment")
print(getwd())

himel <- read.csv("Cleaned_UnitedAirlinesData(updated).csv")

print(himel$Salaries.and.Wages[3:10])

# Calculate Mean, Median, Mode, Standard Deviation, Variance, Quartiles, 9th 
# Decile, 10th Percentile and Range of “Salaries and Wages”

mean <- mean(himel$Salaries.and.Wages[3:10])
median <- median(himel$Salaries.and.Wages[3:10])
standard_deviation <- sd(himel$Salaries.and.Wages[3:10])
variance <- var(himel$Salaries.and.Wages[3:10])
range <- range(himel$Salaries.and.Wages[3:10])
percentile_10 <- quantile(himel$Salaries.and.Wages[3:10], 0.10)
decile_9 <- quantile(himel$Salaries.and.Wages[3:10], 0.90)

# Create the function.
getmode <- function(x) {
  uniqv <- unique(x)
  uniqv[which.max(tabulate(match(x, uniqv)))]
}
mode <- getmode(himel$Salaries.and.Wages[3:10])

# Output the statistics
cat("Mean:", mean, "\n")
cat("Median:", median, "\n")
cat("Mode:", mode, "\n")
cat("Standard Deviation:", standard_deviation, "\n")
cat("Variance:", variance, "\n")
cat("Range:", range, "\n")
cat("10th Percentile:", percentile_10, "\n")
cat("9th Decile:", decile_9, "\n")
