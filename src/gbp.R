gbp <- function(){
  t <- url("http://fx.cmbchina.com/Hq/")
  whatever <- readLines(t,476)
  gb <- as.numeric(tail(whatever,1))
  close(t)
  gb
}

gbpall <- function(){
  t <- url("http://fx.cmbchina.com/Hq/")
  whatever <- readLines(t,483)
  numbers <- suppressWarnings(as.numeric(tail(whatever,27)))
  good <- !is.na(numbers)
  ng <- numbers[good]
  names(ng) <- c('GBP','Middle','HUISold','CASHSold','HUIBuy','CASHBuy')
  close(t)
  ng
}
