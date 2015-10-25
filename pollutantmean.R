pollutantmean <- function(dic,poll,id= 1:332){
    
    fdata <- list.files(dic,full.names = TRUE)
    
    pdata <- data.frame()
    
    for(i in id){
        
        pdata <- rbind(pdata, read.csv(fdata[i]))
    }
      mean(pdata[,poll] , na.rm = TRUE)
}
