mySlider <- function(){
  sliderInput("mySlider",
              "Number of bins:",
              min = 1,
              max = 50,
              value = 30)
}