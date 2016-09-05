library(shiny)
library(datasets)
library(topicmodels)

## load data

## todo: generalize and clean up

data = list()

path = "/Users/mnelimar/Dropbox/projects/2016-topicmodelkritiikki/papereittain"
files = list.files( path )

for( f in files ) {
    p <- paste( path , f, sep = '/' )
    load( p )
    data[ model@k ] <- model
}

## start server
shinyServer(function(input, output) {

  model <- reactive({
    data[[ input$k ]]
  })

  wordcount <- reactive({
    input$n
  })

  output$view <- renderTable({
    terms( model(), wordcount() )
  })

})
