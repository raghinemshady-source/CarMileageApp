library(shiny)

shinyServer(function(input, output) {
  model <- lm(mpg ~ wt + cyl, data = mtcars)
  
  output$prediction <- renderText({
    car <- data.frame(
      wt = input$weight,
      cyl = as.numeric(input$cylinders)
    )
    
    estimate <- predict(model, newdata = car)
    paste(round(estimate, 1), "miles per gallon (mpg)")
  })
})