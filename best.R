best <- function(state, outcome){
    outcome_data <- read.csv("outcome-of-care-measures.csv", colClasses="character")
    if(!state %in% outcome_data$State){
        stop("invalid state")
    } 
    
    else{
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
        outcome_data1 <- subset(outcome_data, State == state
                                & outcome_data[,colnum]!= "Not Available")
        ##omit the NA value for the next length function,
        ##notice that here it used "Not Available" rather than NA
        min_mort <- min(as.numeric(outcome_data1[,colnum]))
        lowest_mort <- subset(outcome_data1, 
                              as.numeric(outcome_data1[,colnum]) == min_mort)
        return(lowest_mort[,2])
        }
}
