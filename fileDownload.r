####################################################################
#############     Code to download weather history      ############
####################################################################


####################################################################
##############      author: "Yadav Shrestha"      ##################
##############      date: "February 01, 2015"     ##################
####################################################################


start = "04/02/15"
end = "05/02/15"

downloadFile <- function(start,end)
{
  
  getwd()
  date <- seq(from = as.Date(start, "%d/%m/%y"), to = as.Date(end,"%d/%m/%y"), by = "day")
  date <- gsub("-","",date)
  url <- (paste(paste("http://api.wunderground.com/api/20ed9dedc5d0a98a/history_",date),"/q/CA/San_Francisco.json "))
  url <- gsub(" ","",url)
  file <- download.file(url,date,method = "auto", quiet = FALSE, mode = "w")
  return (url)
}