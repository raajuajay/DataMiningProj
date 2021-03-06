library("RJSONIO")
filename = "20150208"
readjson <- function(filename){
  s <- fromJSON(filename)
  
  return (s)
}

dailySummary <- function(filename){
  output <- readjson(filename)
  for(i in 1:length(output$history$dailysummary))
  {
    date = as.matrix(output$history$dailysummary[[i]]$date)
    writeLines("===============================================================================")
    writeLines(paste("Date =======> ",as.character(date["pretty",1])))
    writeLines(paste("TimeZone ====> ",as.character(date["tzname",1])))
    writeLines(paste("Fog ========>",output$history$dailysummary[[i]]$fog))
    writeLines(paste("Rain =========> ",output$history$dailysummary[[i]]$rain))
    writeLines(paste("SnowFall =========> ",output$history$dailysummary[[i]]$snow))
    writeLines(paste("SnowFall(m) =========> ",output$history$dailysummary[[i]]$snowfallm))
    writeLines(paste("SnowFall(i) =========> ",output$history$dailysummary[[i]]$snowfalli))
    writeLines(paste("Month to date snowfall(m) =========> ",output$history$dailysummary[[i]]$monthtodatesnowfallm))
    writeLines(paste("Month to date snowfall(i) =========> ",output$history$dailysummary[[i]]$monthtodatesnowfalli))
    writeLines(paste("Since 1st July SnowFall(m)=========> ",output$history$dailysummary[[i]]$since1julsnowfallm))
    writeLines(paste("Since 1st July SnowFall(i)=========> ",output$history$dailysummary[[i]]$since1julsnowfalli))
    writeLines(paste("Snow Depth(m) =========> ",output$history$dailysummary[[i]]$snowdepthm))
    writeLines(paste("Snow Depth(i) =========> ",output$history$dailysummary[[i]]$snowdepthi))
    writeLines(paste("Hail =========> ",output$history$dailysummary[[i]]$hail))
    writeLines(paste("Thunder =========> ",output$history$dailysummary[[i]]$thunder))
    writeLines(paste("Tornado =========> ",output$history$dailysummary[[i]]$tornado))
    writeLines(paste("Mean Temp(C) =========> ",output$history$dailysummary[[i]]$meantempm))
    writeLines(paste("Mean Temp(F) =========> ",output$history$dailysummary[[i]]$meantempi))
    writeLines(paste("Mean Dew Point(m) =========> ",output$history$dailysummary[[i]]$meandewptm))
    writeLines(paste("Mean Dew Point(i) =========> ",output$history$dailysummary[[i]]$meandewpti))
    writeLines(paste("Mean pressure(m) =========> ",output$history$dailysummary[[i]]$meanpressurem))
    writeLines(paste("Mean pressure(i) =========> ",output$history$dailysummary[[i]]$meanpressurei))
    writeLines(paste("Mean Wind Speed(m) =========> ",output$history$dailysummary[[i]]$meanwindspdm))
    writeLines(paste("Mean Wind Speed(i) =========> ",output$history$dailysummary[[i]]$meanwindspdi))
    writeLines(paste("Mean Wind Direction(e) =========> ",output$history$dailysummary[[i]]$meanwdire))
    writeLines(paste("Mean Wind Direction(d) =========> ",output$history$dailysummary[[i]]$meanwdird))
    writeLines(paste("Mean Vision(m) =========> ",output$history$dailysummary[[i]]$meanvism))
    writeLines(paste("Mean Vision(i) =========> ",output$history$dailysummary[[i]]$meanvisi))
    writeLines(paste("Humidity =========> ",output$history$dailysummary[[i]]$humidity))
    writeLines(paste("Max Temp(m) =========> ",output$history$dailysummary[[i]]$maxtempm))
    writeLines(paste("Max Temp(i) =========> ",output$history$dailysummary[[i]]$maxtempi))
    writeLines(paste("Min Temp(m) =========> ",output$history$dailysummary[[i]]$mintempm))
    writeLines(paste("Min Temp(i) =========> ",output$history$dailysummary[[i]]$mintempi))
    writeLines(paste("Max Humidity =========> ",output$history$dailysummary[[i]]$maxhumidity))
    writeLines(paste("Min Humidity =========> ",output$history$dailysummary[[i]]$minhumidity))
    writeLines(paste("Max Dew Point(m) =========> ",output$history$dailysummary[[i]]$maxdewptm))
    writeLines(paste("Max Dew Point(i) =========> ",output$history$dailysummary[[i]]$maxdewpti))
    writeLines(paste("Max Pressure(m) =========> ",output$history$dailysummary[[i]]$maxpressurem))
    writeLines(paste("Max Pressure(i) =========> ",output$history$dailysummary[[i]]$maxpressurei))
    writeLines(paste("Min Pressure(m) =========> ",output$history$dailysummary[[i]]$minpressurem))
    writeLines(paste("Min Pressure(i) =========> ",output$history$dailysummary[[i]]$minpressurei))
    writeLines(paste("Max Wind Speed(m) =========> ",output$history$dailysummary[[i]]$maxwspdm))
    writeLines(paste("Max Wind Speed(i) =========> ",output$history$dailysummary[[i]]$maxwspdi))
    writeLines(paste("Min Wind Speed(m) =========> ",output$history$dailysummary[[i]]$minwspdm))
    writeLines(paste("Min Wind Speed(i) =========> ",output$history$dailysummary[[i]]$minwspdi))
    writeLines(paste("Max Visibility(m) =========> ",output$history$dailysummary[[i]]$maxvism))
    writeLines(paste("Max Visibility(i) =========> ",output$history$dailysummary[[i]]$maxvisi))
    writeLines(paste("Min Visibility(m) =========> ",output$history$dailysummary[[i]]$minvism))
    writeLines(paste("Min Visibility(i) =========> ",output$history$dailysummary[[i]]$minvisi))
    writeLines(paste("GDegree Days =========> ",output$history$dailysummary[[i]]$gdegreedays))
    writeLines(paste("Heating degree Days =========> ",output$history$dailysummary[[i]]$heatingdegreedays))
    writeLines(paste("Cooling Degree Days =========> ",output$history$dailysummary[[i]]$coolingdegreedays))
    writeLines(paste("Precipitation(m) =========> ",output$history$dailysummary[[i]]$precipm))
    writeLines(paste("Precipitation(i)) =========> ",output$history$dailysummary[[i]]$precipi))
    writeLines(paste("Precipitation source =========> ",output$history$dailysummary[[i]]$precipsource))
    writeLines(paste("Heating Degree Days Normal =========> ",output$history$dailysummary[[i]]$heatingdegreedaysnormal))
    writeLines(paste("Month-to-date Heating Degree Days =========> ",output$history$dailysummary[[i]]$monthtodateheatingdegreedays))
    writeLines(paste("Since 1st September Heating Degree Days =========> ",output$history$dailysummary[[i]]$since1sepheatingdegreedays))
    writeLines(paste("Since 1st September Heating Degree Days Normal=========> ",output$history$dailysummary[[i]]$since1sepheatingdegreedaysnormal))
    writeLines(paste("Since 1st July Heating Degree Days =========> ",output$history$dailysummary[[i]]$since1julheatingdegreedays))
    writeLines(paste("Since 1st July Heating Degree Days Normal=========> ",output$history$dailysummary[[i]]$since1julheatingdegreedaysnormal))
    writeLines(paste("Cooling Degree Days Normal =========> ",output$history$dailysummary[[i]]$coolingdegreedaysnormal))
    writeLines(paste("Month-to-date Cooling Degree Days =========> ",output$history$dailysummary[[i]]$monthtodatecoolingdegreedays))
    writeLines(paste("Month-to-date Cooling Degree Days Normal =========> ",output$history$dailysummary[[i]]$monthtodatecoolingdegreedaysnormal))
    writeLines(paste("Since 1st September Cooling Degree Days =========> ",output$history$dailysummary[[i]]$since1sepcoolingdegreedays))
    writeLines(paste("Since 1st September CoolingDegree Days Normal=========> ",output$history$dailysummary[[i]]$since1sepcoolingdegreedaysnormal))
    writeLines(paste("Since 1st Jan Cooling Degree Days =========> ",output$history$dailysummary[[i]]$since1jancoolingdegreedays))
    writeLines(paste("Since 1st Jan Cooling Degree Days Normal=========> ",output$history$dailysummary[[i]]$since1jancoolingdegreedaysnormal))
    writeLines("===============================================================================")
  }
}

dailySummaryinmatrixandfile <- function(inputfilepath,outputfilname){
  
  filenames <- list.files(inputfilepath)
  
  for(i in 1:length(filenames))
  {
    print(paste(inputfilepath,"/",filenames[i],sep = ""))
    output <- readjson(paste(inputfilepath,"/",filenames[i],sep = ""))
    json_file <- lapply(output$history$dailysummary, function(x) {
      x[sapply(x, is.null)] <- NA
      unlist(x)
    })
    a <- do.call("rbind", json_file)
    if(file.exists(outputfilname))
      write.table(a,file=outputfilname,sep=",", col.names = F, row.names = F,append = TRUE)
    else
      write.table(a,file=outputfilname,sep=",", col.names = T, row.names = F)
  }
}


