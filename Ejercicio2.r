# Simulate 50 values from a normal distribution with mean 10 and standard deviation 2
set.seed(123)  # Setting seed for reproducibility
values <- rnorm(50, mean = 10, sd = 2)

# Generate a histogram
hist(values, main = "Histogram of Simulated Normal Distribution",
    xlab = "Values", ylab = "Frequency", col = "blue", border = "black")