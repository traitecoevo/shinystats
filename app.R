# Load dependenices 
library(shiny)
library(palmerpenguins)
library(ggplot2)

ui <- fluidPage(
  # Title
  h1("Guess the correlation - Penguin edition"),
  
  sidebarLayout(
    # Control panel on the LHS
    sidebarPanel(),
    # The RHS display
    mainPanel()
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)