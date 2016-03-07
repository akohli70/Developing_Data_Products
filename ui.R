#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

library(shiny)

# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)

# Define the overall UI
shinyUI(
  fluidPage(
    titlePanel("Basic Data Table"),
    
    # Create a new Row in the UI for selectInputs
    fluidRow(
      column(4,
             selectInput("man",
                         "Manufacturer:",
                         c("All",
                           unique(as.character(mpg$manufacturer))))
      ),
      column(4,
             selectInput("trans",
                         "Transmission:",
                         c("All",
                           unique(as.character(mpg$trans))))
      ),
      column(4,
             selectInput("cyl",
                         "Cylinders:",
                         c("All",
                           unique(as.character(mpg$cyl))))
      )
    ),
    # Create a new row for the table.
    fluidRow(
      DT::dataTableOutput("table")
    )
  )
)