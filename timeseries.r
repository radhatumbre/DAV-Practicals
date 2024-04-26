install.packages('forecast')
library(forecast) 

data("AirPassengers") 
AirPassengers
summary(AirPassengers)
plot (AirPassengers) 

ts_data <- ts(AirPassengers, frequency=12) 			# Convert to time series, monthly frequency
decomp_data <- decompose(AirPassengers, "multiplicative") 		# Decompose data
plot(decomp_data) 								# Plot decomposed data

# Individual decomposed plots
plot(decomp_data$seasonal)
plot(decomp_data$trend)
plot(decomp_data$random)

# Regression line
plot(AirPassengers)
regression_model <- lm(AirPassengers ~ time(AirPassengers))
abline(regression_model)
