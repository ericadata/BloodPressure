library(shiny)

shinyUI(
    fluidPage(
        # Application title
        titlePanel("Blood Pressure"),
        # Input
        sidebarLayout(
            sidebarPanel(
                numericInput(inputId = 'systolic', 
                             label = 'Systolic (mmHg)',
                             value = 120, min=0, max=300, step = 1),
                numericInput(inputId = 'diastolic',
                             label = 'Diastolic (mmHg)',
                             value = 80, min=0, max=200, step = 1),
                submitButton('Submit')
            ),
            # Results 
            mainPanel(
                h3('Results'),
                h4('Category'),
                textOutput('cat'),
                h4('Pulse Pressure (mmHg)'),
                textOutput('PP'),
                h4('Mean Arterial Pressure (mmHg)'),
                textOutput('MAP')
            )
        ),
        fluidRow(includeHTML("Documentation.html"))
    )
)