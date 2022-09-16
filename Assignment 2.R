data <- read.csv("us-states.csv")
View(data)
library(tidyverse)
data_PA <- filter(data, state =="Pennsylvania")
View(data_PA)
n <- length(data_PA$cases)
data_PA$incr_cases <- 0
data_PA$incr_deaths <- 0
for(i in 2:n) {
  data_PA$incr_cases[i] <- (data_PA$cases[i]-data_PA$cases[i-1])
}
for(i in 2:n) {
  data_PA$incr_deaths[i] <- (data_PA$deaths[i]-data_PA$deaths[i-1])
}
View(data_PA)
SD <- sd(data_PA$incr_cases)
print(SD)
