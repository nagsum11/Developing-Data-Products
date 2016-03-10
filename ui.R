library(shiny) 

 shinyUI( pageWithSidebar( 
   # Application title 
         headerPanel("Mean/Median/Sum Calculator Application!"), 
            
           sidebarPanel( 
             h3("Instructions"),
             p("This application Tells Mean/Median/Sum over three input values..."),
                     numericInput('Input1', 'Number1',0, min = 1, max = 20, step = 1),
                     numericInput('Input2', 'Number2', 0, min = 1, max = 20, step = 1),
                     numericInput('Input3', 'Number3', 0, min = 1, max = 20, step = 1),
             selectInput("operation", label = h3("Operation"), choices = list("SUM" = 1, 
                          "MEAN" = 2, "MEDIAN" = 3, selected = 1))        
             ),  
           mainPanel( 
                     
             h2('Input any 3 integers in given text boxes and select Operation!'), 
             h5('This application Tells Mean/Median/Sum on three input values.'), 
             
             h3('Result is:-'),
                     
                     verbatimTextOutput("results") 
             ) 
   ) 
   ) 
