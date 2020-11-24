
suppressMessages(library(dplyr))
suppressMessages(library(corrr))
suppressMessages(library(ggplot2))
mtcarsdata<-subset(mtcars,select=c(am,mpg,hp,wt))
mtcarsdata$am<-as.factor(mtcars$am)
  model1<-lm(mpg~am+wt+hp, data=mtcarsdata)
  
  model1pred<-function(x){
      predict(model1,newdata=x)
    }
  
    library(shiny)
    shinyServer(function(input, output){
      
      output$prediction<-renderText({
      model1pred(x=data.frame(wt=input$wt,hp=input$hp,am=input$am))
        
      })
      
   })
    

    
  
  
  
      