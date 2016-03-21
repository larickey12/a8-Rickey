#Laura Rickey
#INFO498f
#a8
#server.r

#packages
library(dplyr)
library(plotly)
library(shiny)


# Load the data information
info <- iris

#Load source
source("chart_a8.R")

shinyServer(function(input, output) {
  
  # Create plot
  output$chart <- renderPlotly({
    chartfun(info, input$data1, input$data2, input$points, input$radio)
  })
  
})