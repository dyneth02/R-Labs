getwd()
setwd("C:/Users/metal/Documents/SLIIT Y02S02/IT 2110 - PAS/R Labs/Lab 03")

#Question 01
table_data <- read.csv("DATA 3.csv", header=TRUE)
table_data

table_data[1]
table_data$x1

table_data[2]
table_data$x2

table_data[3]
table_data$x3

names(table_data) <- c("Age of Student", "Gender", "Accomadation")

table_data$`Age of Student`
table_data$Gender
table_data$Accomadation

table_data$Gender <- factor(table_data$Gender, c(1,2), c("Male", "Female"))
table_data$Accomadation <- factor(table_data$Accomadation, c(1,2,3), c("Stays at Home", "Boarded Students", "Loging"))


#Question 02
frequency_by_gender <- table(table_data$Gender)
percentages <- round(100 * frequency_by_gender / sum(frequency_by_gender))
labels <- paste(names(frequency_by_gender), "-", percentages, "%")
pie(frequency_by_gender, 
    main = "Pie Chart by Gender-Wise", 
    labels = labels,
    col = c("yellow","orange") , 
    border = "brown"
)
legend("bottomright", legend = names(frequency_by_gender), fill = c("yellow", "orange"))

#bar graph
bar_heights <- barplot(frequency_by_gender,
                       col = c("skyblue", "pink"),
                       main = "Gender-wise Distribution",
                       xlab = "Gender",
                       ylab = "Number of Students")

text(x = bar_heights,
     y = frequency_by_gender,
     label = frequency_by_gender,
     pos = 1,  # position above the bar
     cex = 1,  # text size
     col = "black")

abline(h=0)
abline(h=50)

frequency_by_gender <- as.data.frame(frequency_by_gender)
names(frequency_by_gender) <- c("Gender", "Number of Students")
View(frequency_by_gender)

#pie chart
frequency_by_accomadation <- table(table_data$Accomadation)

percentages <- round(360 * frequency_by_accomadation / sum(frequency_by_accomadation),2)
percentages

getmode <- function(y) {
  count <- table(y)
  names(count)[count==max(count)]
}

getmode(table_data$Accomadation)


#bar graph
bar_heights <- barplot(frequency_by_accomadation,
                       col = c("cyan","violet","purple"),
                       main = "Gender-wise Distribution",
                       xlab = "Gender",
                       ylab = "Number of Students")

text(x = bar_heights,
     y = frequency_by_accomadation,
     label = frequency_by_accomadation,
     pos = 1,  # position above the bar
     cex = 1,  # text size
     col = "black")

abline(h=0)
abline(h=50)
  
frequency_by_accomadation <- as.data.frame(frequency_by_accomadation)
names(frequency_by_accomadation) <- c("Accomadation Type", "Number of Students")
View(frequency_by_accomadation)


#Question 03
frequency_by_gender_accomadation <- table(table_data$Gender, table_data$Accomadation)
frequency_by_gender_accomadation


barplot(frequency_by_gender_accomadation,
        main = "Analysis by Gender and Accomadation",
        col = c("maroon", "beige"),
        beside = TRUE
        )
legend("topright", legend = rownames(frequency_by_gender_accomadation), fill = c("maroon", "beige"))
abline(h=0)
colors()


library(tidyr)
library(dplyr)

wide_df <- frequency_by_gender_accomadation %>%
  pivot_wider(names_from = Accomadation, values_from = Freq)

View(wide_df)

#Question 04
boxplot(table_data$`Age of Student` ~ table_data$Gender, horizontal = TRUE, xlab = "Age", ylab = "Gender")
boxplot(table_data$`Age of Student` ~ table_data$Accomadation, horizontal = TRUE, xlab = "Age", ylab = "Accomadation Type")

mean_age_table <- tapply(table_data$`Age of Student`, list(table_data$Gender, table_data$Accomadation), mean)
mean_age_table
class(mean_age_table)
mean_age_table <- as.data.frame(mean_age_table)
View(mean_age_table)
