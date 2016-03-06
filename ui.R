library(shiny) 

 shinyUI( pageWithSidebar( 
   # Application title 
         headerPanel("Addition of two Numbers!"), 
            
           sidebarPanel( 
                     textInput('guess1', 'Number1', value = ""),
                     textInput('guess2', 'Number2', value = ""),
                     actionButton("goButton", "Go!") 
             ),  
           mainPanel( 
                     
             h2('Input any two integers in given text boxes and hit Go button!'), 
                              h5('This application add any two given integers and shows the result back'), 
             
             h3('Results of Addition is:-'),
                     
                     verbatimTextOutput("outputValue") 
             ) 
   ) 
   ) 
