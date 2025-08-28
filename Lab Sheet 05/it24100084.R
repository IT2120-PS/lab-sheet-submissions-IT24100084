setwd("C:\\Users\\it24100084\\Desktop\\IT24100084")
getwd()
Delivery_Times<-read.table("Exercise - Lab 05.txt", header = TRUE)
Delivery_Times
fix(Delivery_Times)
names(Delivery_Times)<-c("X1")
attach(Delivery_Times)
hist(Delivery_Times$X1,
     breaks = seq(20, 70, by = 5),
     right = FALSE,
     main = "Histogram for Delivery Times",
     xlab = "Delivery Times",
     ylab = "Frequency",
     col = "purple",
     border = "yellow")
hist_data <- hist(Delivery_Times$X1,
                  breaks = seq(20, 70, by = 5),
                  right = FALSE,
                  plot = FALSE)


cumulative_freq <- cumsum(hist_data$counts)


plot(hist_data$mids, cumulative_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16,
     col = "pink")
