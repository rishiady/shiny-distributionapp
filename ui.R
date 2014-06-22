library(shiny)
library(ggplot2)
library(eeptools)
shinyUI(pageWithSidebar(
  
  # Title
  headerPanel("variation in the distribution based on the number of samples
               as the observations go from 0 to 10,000. Notice the distribuition 
              approching normal as the number of observations increase"),
  
  sidebarPanel(
    sliderInput("obs","Number of observations:",
                min=0,max=10000,value=100)
  ),
  
  # GGPLOT
  
  mainPanel(
    plotOutput("distPlot")
  )
  
  
  
))
