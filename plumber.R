#* Echo back the input
#* @param path path of the csv file in disk location
#* @get /read
#* @serializer unboxedJSON
function(path){
  df<-readr::read_csv(path)
  list(names(df))
}


#* subset data back the input
#* @param col1 one column of the csv file
#* @param col2 one column of the csv file
#* @param path path path of the csv file in disk location
#* @get /subset
function(path,col1,col2){
  df<-readr::read_csv(path) %>% 
    select(c(col1,col2))
  list(x_axis=rnorm(10),y_axis=rnorm(10),dates=seq(as.Date('2011-01-01'),as.Date('2011-01-10'),by = 1))
}