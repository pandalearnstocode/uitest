#* Echo back the input
#* @param msg The message to echo
#* @get /read
#* @serializer unboxedJSON
function(msg){
  df<-readr::read_csv(msg)
  list(names(df))
}


#* subset data back the input
#* @param col1 The message to col1
#* @param col2 The message to col2
#* @param path The message to path
#* @get /subset
function(path,col1,col2){
  df<-readr::read_csv(path) %>% 
    select(c(col1,col2))
  list(x_axis=rnorm(10),y_axis=rnorm(10),dates=seq(as.Date('2011-01-01'),as.Date('2011-01-10'),by = 1))
}