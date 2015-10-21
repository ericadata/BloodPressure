library(shiny)

shinyServer( 
    function(input, output) { 
        
        output$cat <- renderText({
            if(input$systolic >=180 | input$diastolic >= 110)
                'Hypertensive Emergency'
            else if(input$systolic >=140 & input$diastolic < 90)
                 'Isolated Systolic Hypertension'
            else if(input$systolic >=160 | input$diastolic >= 100)
                'Stage 2 Hypertension'
            else if(input$systolic >=140 | input$diastolic >= 90)
                'Stage 1 Hypertension'
            else if(input$systolic >=120 | input$diastolic >= 80)
                'Prehypertension'
            else if(input$systolic >=90 & input$diastolic >= 60)
                'Normal'
            else if(input$systolic < 90 | input$diastolic < 60)
                'Hypotension'
        })
            output$PP <- renderText(input$systolic - input$diastolic)
            
            output$MAP <- renderText(round(
                (((2*input$diastolic) + input$systolic) / 3)
                , 0)
            )
    }
)