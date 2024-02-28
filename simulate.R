# Load dependenices 
library(shiny)
library(dplyr)
library(ggplot2)


mean_vector <- c(10, 10)
true_cor = sample(seq(-1, 1, by = 0.01), 1)

correlation_matrix <- matrix(c(1, true_cor, true_cor, 1), nrow = 2)

sd1 = sample(seq(0.1,2, by = 0.01), 1) 
sd2 = sample(seq(0.1,2, by = 0.01), 1) 
sigma_matrix <- correlation_matrix * outer(c(sd1, sd2), c(sd1, sd2))

# Generate data
n = sample(seq())
simulated_data <- MASS::mvrnorm(20, mu = mean_vector, Sigma = sigma_matrix) |> as.data.frame()
colnames(simulated_data) <- c("x", "y")

# Dataframe
ggplot(data = simulated_data, aes(x = x, y = y)) +
  geom_point()

# Calculate correlation based on simulated data
cor(simulated_data[1], simulated_data[2])

