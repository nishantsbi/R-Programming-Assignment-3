helper <- function(data, outcome, num){
hospital <- data[, 2][order(outcome, data[, 2])[num]]
hospital
}
rankall <- function(outcome, num = "best") {
data <- read.csv(file="outcome-of-care-measures.csv", colClasses = "character")
reason <- c("heart attack", "heart failure", "pneumonia")
state_arr <- sort(unique(data$State))
arr_len <- length(state_arr)
hospital <- rep("", arr_len)
if(!outcome %in% reason){
stop("invalid outcome")
} else {
for(i in 1:arr_len){
goal <- data[data$State == state_arr[i], ]
if(outcome == "heart attack"){
attack <- as.numeric(goal[, 11])   
len <- dim(goal[!is.na(attack),])[1]
if(num == "best"){
hospital[i] <- helper(goal, attack, 1)
} else if(num == "worst"){
hospital[i] <- helper(goal, attack, len)
} else if(num > len){
hospital[i] <- NA
} else{
hospital[i] <- helper(goal, attack, num)
}          
}
else if(outcome == "heart failure" ){ # Attention here!
failure <- as.numeric(goal[, 17])   
len <- dim(goal[!is.na(failure),])[1]
if(num == "best"){
hospital[i] <- helper(goal, failure, 1)
} else if(num == "worst"){
hospital[i] <- helper(goal, failure, len)
} else if(num > len){
hospital[i] <- NA
} else{
hospital[i] <- helper(goal, failure, num)
} 
}
else{
pneumonia <- as.numeric(goal[, 23])
len <- dim(goal[!is.na(pneumonia),])[1]
if(num == "best"){
hospital[i] <- helper(goal, pneumonia, 1)
} else if(num == "worst"){
hospital[i] <- helper(goal, pneumonia, len)
} else if(num > len){
hospital[i] <- NA
} else{
hospital[i] <- helper(goal, pneumonia, num)   
} 
}  
}
df <- data.frame(hospital = hospital, state = state_arr)
df
}
}