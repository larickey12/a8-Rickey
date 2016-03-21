#Laura Rickey
#INFO498f
#a8
#ui


#packages
library(shiny)
library(plotly)
library(dplyr)


shinyUI(fluidPage(
  
  # Header
  titlePanel("Iris"),
  
  # Create sidebar layout
  sidebarLayout(
    
    # Create side panel
    sidebarPanel(
      
      # Widgets
      radioButtons("data1", label = h3("Petal"), 
                  choices = list("Length" = 'Petal.Length', "Width" = 'Petal.Width'),
                  selected = 'Petal.Width'),
      
      radioButtons("data2", label = h3("Sepal"), 
                  choices = list("Length" = 'Sepal.Length', "Width" = 'Sepal.Width'), 
                  selected = 'Sepal.Width'),
      
      # Amount of points shown
      sliderInput("points", label = h3("Select Amount of Inputs"), min = 1, max = 150, value = 25)
    ),
    
    # Main panel: display plotly chart
    mainPanel(
      plotlyOutput("chart")
    )
  )
))