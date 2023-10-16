#Q1
#q1a:

academician_Id <- c(111, 222, 333, 444, 555, 666, 777, 888, 999, 112, 113, 114, 115,
                    116, 117, 118, 119, 120, 121, 123, 124, 125, 126)

academician_Name <- c("Rick" , "Dan" , "Michelle" ,"Aaron" , "Frank" , "Abbey" ,"Edward" , 
                      "Abel" , "Reuben" , "Abelson","Abrams" , "Ace" , "Jane" , "Mary" , "James" , "Bertie" , 
                      "Rachel" , "Ross" , "Monica", "Chandler", "Phoebe", "Joseph", "Janice" )
title <- c("Dr","Asst","Dr","Prof","Dr","Prof","Prof","Asst","Dr","Inst","Asst",
           "Inst","Dr","Asst","Asst","Asst","Dr","Dr","Prof","Inst","Inst","Dr","Prof")

academician_Salary <- c(6230.3 , 5150.2 , 6110.0 , 7290.0 , 8430.0 , 8500.0 , 9540.0 ,4145.0 ,7410.0 , 
                        6000.0 , 4510.0 , 6200.0 , 7500.0 , 4600.0 ,4621.0 ,5400.0 , 7410.0 ,8560.0 , 9740.0, 6870.0 , 5740.0 , 
                        6410.0 ,8245.0)

academician_languageExamScore <- c( 65, 84, 86, 95, 91 , 40 ,35 , 85 , 38, 59 , 81 ,68 , 87, 
                                    84, 53 ,94 , 85, 88, 79, 86, 53 , 45, 89)

#q1a
new_salaries <- numeric(length(academician_Salary))

for (i in 1:length(academician_Salary)) {
  if (academician_languageExamScore[i] > 85) {
    new_salaries[i] <- academician_Salary[i] * 1.025
  } else {
    new_salaries[i] = academician_Salary[i]
  }
}

new_salaries




#q1b
academicians <- data.frame(
  academician_Id = academician_Id,
  academician_Name = academician_Name,
  title = title,
  academician_Salary = new_salaries  
)

print(academicians)



#q1c:
academicians<- data.frame(
  "Academician Id" = academician_Id,
  "Academician Name" = academician_Name,
  "Title" = title,
  "Academician Salary" = academician_Salary,
  "Language Exam Point" = academician_languageExamScore,
  "New Salary" = new_salaries  # Assuming 'new_salaries' is already calculated
)

#q1d:
print(academicians)

academician_data$Title <- factor(academician_data$Title)

print(academicians)


#q1f:

mean_old_salaries <- mean(academician_Salary, na.rm = TRUE)
mean_new_salaries <- mean(new_salaries, na.rm = TRUE)
cat("Mean of Old Academician Salaries: ", mean_old_salaries, "\n")
cat("Mean of New Academician Salaries: ", mean_new_salaries, "\n")


#q1g:

salary_increase_count <- sum(new_salaries > academician_Salary)
cat("Number of Academicians with Salary Increase: ", salary_increase_count, "\n")

#q1h:

raise <- new_salaries - academician_Salary
max_raise_index <- which.max(raise)


#Q2

setwd("C:/Users/user/Desktop/365/lg2")
file_path <- "mydata.txt"
data <- read.table("mydata.txt", header = TRUE, sep = "\t", na.strings = "NA")



cat("Number of missing values in each column:\n")
missing_values <- colSums(is.na(data))
missing_values



cat("Total number of missing values:")
total_missing <- sum(missing_values)
total_missing


#Removing the missing values
data_clean <- na.omit(data)

cat("Updated data frame after removing the missing values: ")
print(data_clean)






#Q2


color <- c("Red","Green","Black")

'Odd numbers' <- matrix(1:4, nrow = 2)

'Language(s)'<- list("apple", "banana", "cherry")

#the list containing a vector, a matrix and a list.
my_list <- list(Vector = color, Matrix = 'Odd_numbers', list = 'Language(s)')


first_element <- my_list[[1]]
second_element <- my_list[[2]]


print(first_element)

print(second_element)





#Q4

list("Temperatures_Ankara",25,18,19,26,19,20,25)
list("Temperatures_Izmir",21,20,21,29,19,20,14)
list("Temperatures_Istanbul",24,20,21,28,15,25,19)




cat("Maximum temperature in Ankara is",max(sapply(Temperatures_Ankara,max)),"degree")
cat("Maximum temperature in Izmir is",max(sapply(Temperatures_Izmir,max)),"degree")
cat("Maximum temperature in Istanbul is",max(sapply(Temperatures_Istanbul,max)),"degree")



#Q5

x <- c(1, 2,3,4,5,6,7)
y <- c(25,18,19,26,19,20,25)

plot(x,y,
     type="l",
     col="blue",
     xlim= c(1,7),
     ylim= c(18,26),
     xlab="Weeks",
     ylab="Temperature",
     main="Temperature of Ankara for One Week")
