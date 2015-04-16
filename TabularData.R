####################################################################
#############     Code to abstract the required    #################
#############     parameters from the collection   #################
#############     of downloaded files              #################
####################################################################


####################################################################
##############      author: "Yadav Shrestha"      ##################
##############      date: "February 05, 2015"     ##################
####################################################################



library("RJSONIO")

readjson <- function(filename){
  s <- fromJSON(filename)
  
  return (s)
}

###############################################
######## old method of listing files ##########
###############################################

#filename1 = "20150207"
#filename2 = "20150208"
#filename3 = "20150204"
#inputc <- list(filename1,filename2,filename3)

###############################################
######## old method of listing files ##########
###############################################

createTable <- function(){
directory = "c:/Download Files/jsondata"
filesList<- list.files(directory, pattern ="*.*",full.names = TRUE)
getData <- lapply(X=inputc,function(x){
 output <- readjson(x)
 data.frame(hail=output$history$dailysummary[[1]]$hail,
            thunder = output$history$dailysummary[[1]]$thunder,
            rain = output$history$dailysummary[[1]]$rain,
            SnowFall = output$history$dailysummary[[1]]$snow,
            Temp = output$history$dailysummary[[1]]$meantempm,
            MinTemp = output$history$dailysummary[[1]]$mintempm,
            MaxTemp =output$history$dailysummary[[1]]$maxtempm,
            Humidity = output$history$dailysummary[[1]]$humidity,
            Max_Pressure = output$history$dailysummary[[1]]$maxpressurem,
            Min_Pressure = output$history$dailysummary[[1]]$minpressurem
            )
})
data <- do.call(rbind,getData)

#save the data frame to a file in csv format
write.csv(data, file = "MyData.csv",row.names = FALSE, na="NA")

#print the contents on the console
return (data)
}



