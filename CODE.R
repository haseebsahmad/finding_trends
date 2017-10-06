#CONVERSION OF DATAFRAME INTO MATRIX
A=matrix(AirPassengers,nrow = 12,ncol = 12,byrow = TRUE)
#ASSINGING VALUES TO ROWS AND COLUMNS
dimnames(A)=list(c(1949:1960),c("Jan","Feb","March","April","May","June","July","Aug","Sep","Oct","Nov","Dec"))
#RETURNS THE INDEX OF LARGEST ENTRY IN MATRIX
ap=which(A==max(A),arr.ind = TRUE)
#PRINTING THE RESULT OF MOST PROFITABLE MONTH/YEAR/NUMBER OF PASSENGER
#SOLUTION OF PART 1-2
sprintf("Most profitabale month in 12 years:%s year:%s flights %s ",ap[1,2],year,max(A))
#PART3 SOLUTION
plot(AirPassengers,col="red",ylab="Number of Passengers",xlab="Year")
max(rowSums(A))