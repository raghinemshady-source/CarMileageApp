library(shiny)

fluidPage(
  titlePanel("Car Mileage Estimator"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("weight", "Car weight (1,000 pounds):",
                  min = 1.5, max = 5.5, value = 3, step = 0.1),
      selectInput("cylinders", "Number of cylinders:",
                  choices = c(4, 6, 8))
    ),
    
    mainPanel(
      h3("Estimated mileage"),
      textOutput("prediction"),
      h4("How to use this app"),
      p("Choose the car's weight and number of cylinders. The estimated
        miles per gallon (mpg) will appear above. Higher mpg means the
        car uses less fuel.")
    )
  )
)
