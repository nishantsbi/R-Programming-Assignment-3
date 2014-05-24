rankall <- function(outcome, num = "best"){
    outcome_data <- read.csv("outcome-of-care-measures.csv", colClasses="character")
    if (outcome == "heart attack"){
            colnum <- 11
        }
        else if (outcome == "heart failure"){
            colnum <- 17
        }
        else if (outcome == "pneumonia"){
            colnum <- 23
        }
        else{
            stop("invalid outcome")
        }
        ##determing the coloum
        
        outcome_data1 <- subset(outcome_data, outcome_data[,colnum]!= "Not Available")
        ##omit the NA value for the next length function,
        ##notice that here it used "Not Available" rather than NA
        
        if (num == "best"){
            rank <- 1
        }
        else if (num == "worst"){
            rank <- length(outcome_data1[,colnum])
        }
        else if (num > nrow(outcome_data1)){
            return(NA)
        }
        else{
            rank <- 1:num
        }
        hos_num <- sort(as.numeric(outcome_data1[,colnum]))
        hos_name <- subset(outcome_data1, 
                           as.numeric(outcome_data1[,colnum]) == hos_num)
        ##death rate has to be numeric

    ##rankdata <- data.frame(hospital, state)
    ##return(rankdata)
}

