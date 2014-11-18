library(shiny)
source('global.R', local=TRUE)

shinyServer(function(input, output) {
  
  # sorted columns are colored now because CSS are attached to them
  output$mytable <- renderDataTable({
    table
  }, options = list(orderClasses = TRUE))
  # options = list(lengthMenu = c(5, 30, 50), pageLength = 5)
  
})