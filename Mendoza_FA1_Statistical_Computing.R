# Jet Miguel Mendoza
# Load required package
library(MASS)

# Exercise 1.1
# Setting seed for reproducibility
set.seed(123)  

# Generate random sample from t distribution with 4 degrees of freedom
sample_data <- rt(100, df=4)

# Display a probability histogram of the sample_data
truehist(sample_data, col="skyblue", main="Probability Histogram with t4 Density Curve", xlab="x")

# Exercise 1.2
# Add t4 density curve to the histogram
curve(dt(x, df=4), add=TRUE, col="darkblue", lwd=2)

# Exercise 1.3
# Add an estimated density curve to the histogram
lines(density(sample_data), col="red", lwd=2)

# Exercise 1.4a
# Write a function to scale data to the interval [0, 1]
f <- function(x, a, b) {
  return ((x-a)/b)
}


# Exercise 1.4b
# Generate a random sample of Normal data with mean=2 and sd=2
x <- rnorm(100, mean=2, sd=2)

# Transform x to the interval [0, 1]
y <- f(x, a = min(x), b = max(x) - min(x))

# Print a summary of both the sample x and the transformed sample y
cat("Summary of the sample x:\n")
print(summary(x))

cat("Summary of the transformed sample y:\n")
print(summary(y))
