#input data
com_hand <- c("rock", "paper", "scissors")
my_hand <- c("rock", "paper", "scissors", "bye")
result <- c("win", "tie", "lose")
win <- 0
tie <- 0
lose <- 0
'%notin%' <- Negate('%in%') 
  #Game
  game <- function() {
    message("Hi! Welcome to the game!!",
            "\nYou can select rock, paper, scissors only to fight the AI")
    while (TRUE) {
      player_input <- readline("My result :")
      AI_hand <- sample(com_hand, size = 1)
      if(player_input == AI_hand) {
        message("Oh! You tie", 
                "\nyour hand is ", player_input,
                "\ncom hand is ", AI_hand)
        tie = tie + 1 
        
      }else if(player_input == "rock" & AI_hand == "scissors" ||
               player_input == "paper" & AI_hand == "rock" ||
               player_input == "scissors" & AI_hand == "paper"){
        message("Yes! you win!",
                "\nyour hand is ", player_input,
                "\ncom hand is ", AI_hand)
        win = win + 1
        
      }else if(player_input %notin% my_hand ) {
        message("Error! It's not rock paper scissors, try again")
        
      }else if(player_input == "bye") {
        message("Thank you for joinnig.", 
                "\nyour score is", 
                "\nwin :", win,
                "\ntie :", tie,
                "\nlose :", lose)
        score <- c(win, tie, lose)
        print(score_table <- data.frame(result, score))
        break
      }else {
        message("Sorry~ you lose",
                "\nyour hand is ", player_input,
                "\ncom hand is ", AI_hand)
        lose = lose + 1
      }
    }
  }
