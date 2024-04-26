# DATA VISUALIZATION IN R

data <- data.frame(
  age = c(16,22,23,16,20),
  gender = c("Male","Male","Female","Male","Female"),
  height = c(1.97, 1.88, 1.58, 1.75, 1.66)
)
head(data)


#Histogram
hist(data$age, main="Age distribution", xlab = "Age")

#Scatter
plot(data$age, data$height, main="Age vs Height", xlab='age', ylab='height')

#Bar plot
barplot(table(data$gender), main="Gender Distribution", xlab="gender", ylab='frequency')

#Box plot
boxplot(data$height, main="Height boxplot", ylab='height')

#Pie chart
pie_data <- c(210,450,250,100,50,90)
names(pie_data) <- c("A",'b','c','d','e','f')
pie(pie_data, labels=names(pie_data), main="Pie Chart")

#Line Graph
line_data <- c(17,25,38,13,41)
plot(line_data, type='o', ylab='frequency', main='Line graph')

#Heatmap
heatmap_data <- data.frame(
  A = c(1,7,3,2,6),
  B = c(1,7,2,0,10),
  C = c(12,7,9,2,5),
  D = c(10,10,1,1,10)
)
heatmap(as.matrix(heatmap_data))

#Time Series
x <- c(11,13,26,9,7,44,66,22,44,33,99,45,76,57,88,40,76,81,12,16,32)
x_ts <- ts(x, start=1, frequency=1)
plot(x_ts, main="Time Series", xlab='Time', ylab='Frequency')



