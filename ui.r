library(shiny)

# Define UI for dataset viewer application
shinyUI(fluidPage(

  # Application title.
  titlePanel("Topic model examination tool"),

  # Sidebar with controls to select a dataset and specify the
  # number of observations to view. The helpText function is
  # also used to include clarifying text. Most notably, the
  # inclusion of a submitButton defers the rendering of output
  # until the user explicitly clicks the button (rather than
  # doing it immediately when inputs change). This is useful if
  # the computations required to render output are inordinately
  # time-consuming.
  sidebarLayout(
    sidebarPanel(

      sliderInput("k", "Choose number of topics", 2, 50, 2 ),
      sliderInput("n", "Choose number of words", 5, 30, 15, 5),

      width = 3
    ),

    # Show a summary of the dataset and an HTML table with the
    # requested number of observations. Note the use of the h4
    # function to provide an additional header above each output
    # section.
    mainPanel(
      h4("Words per topic"),
      tableOutput("view")
    )
  )
))
