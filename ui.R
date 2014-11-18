library(shiny)


shinyUI(fluidPage(
  title = 'Examples of DataTables',
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        'input.dataset === "NBA"',
        helpText('Click the column header to sort a column.')
      )
    ),
    mainPanel(
      tabsetPanel(
        id = 'dataset',
        tabPanel('NBA', dataTableOutput('mytable'))
      )
    )
  )
))