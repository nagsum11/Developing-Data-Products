#install.packages("shiny") 
 library(shiny) 
 
 #print(number) 
  
 shinyServer(  
           function(input, output) { 
                     output$inputValue <- renderPrint({as.numeric(input$guess1)}) 
                    
                               output$outputValue <- renderText({ 
                               if (input$goButton == 0 ) "You have not entered a number yet" 
                               else if (input$goButton >= 1) as.numeric(input$guess1)+as.numeric(input$guess2)
                       }) 
             } 
   ) 
