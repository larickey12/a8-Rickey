#Laura Rickey
#INFO498f
#a8
#chart

#packages
library(plotly)

chartfun <- function(df, x, y, points, radioButtons) {
  
  # Data shown
  infoshown <- df[sample(nrow(df), points), ]
  
  # Creating the plot
  plot <- plot_ly(data = infoshown, x = eval(parse(text = x)), y = eval(parse(text = y)), 
                  mode = "markers", color = Species) %>%
                      layout(title = "Iris", xaxis = list(title = as.character(x)), yaxis = list(title = as.character(y)))
                          return(plot)
}
