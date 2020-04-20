fluidPage(
  ## Start button, score window, check box for the games
  fluidRow(actionButton('StartButton', 'Start', style = 'padding = 10px 10px 10px 10px;', width = '10%'),
    textOutput('score', inline = TRUE),
    checkboxGroupInput('selectGame', 'Select Your Game:', c('Simon-Says', 'F or Space', 'RT Test'), inline = TRUE)
  ),
  ##Left side Simon-says and Quick Reaction game on left
  ##Right side reaction button game
  splitLayout(
    column(
      fluidRow(class = 'gameSpace'),
      fluidRow(class = 'gameSpace'),
      width = 5
    ),
    column(class = 'gameSpace',
           width = 5)
  )
)