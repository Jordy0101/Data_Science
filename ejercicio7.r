# Simulate 100 observations from a binomial distribution with p=0.5 and n=10
set.seed(123)  # Setting seed for reproducibility
observations <- rbinom(100, size = 10, prob = 0.5)

# Calculate the mean of the observations
mean_observations <- mean(observations)

# Calculate the variance of the observations
variance_observations <- var(observations)

# Print the results
cat("Mean:", mean_observations, "\n")
cat("Variance:", variance_observations, "\n")