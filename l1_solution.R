#3

print("This is my first R script!")
cat("This is my first R script")
"This is my first R script"


x<-34
y<-16
x
y
z=x+y
z
w=z/2
w





#4a

setwd("C:/Users/user/Desktop/365/lg1/")

file_path <- "midterm.txt"
MidtermVector<-scan("midterm.txt",numeric(),quote="")
cat(MidtermVector)

file_path <- "final.txt"
FinalVector<-scan("final.txt",numeric(),quote="")


passingStudents <- sum(totalGrades >= 40)


cat(passingStudents, "student passed the course\n")





#4b.

passingGrades <- totalGrades[totalGrades >= 40]

cat(passingGrades)




#5

Matrix <- cbind(MidtermVector, FinalVector, PassingGrade = totalGrades)
Matrix

head(Matrix)

colnames(Matrix) <- c("midterm", "final", "grade")



