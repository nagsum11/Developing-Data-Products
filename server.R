#install.packages("shiny") 
 library(shiny) 
 
 shinyServer(  
           function(input, output) { 
             out <- reactive({
               if(input$operation == 1){
                 sum(c(input$Input1, input$Input2, input$Input3))
               }
               else if(input$operation == 2){
                 mean(c(input$Input1, input$Input2, input$Input3))
               }
               else if(input$operation == 3){
                 median(c(input$Input1, input$Input2, input$Input3))
               }
             })
             output$results <- renderPrint({out()})
           }
 )
