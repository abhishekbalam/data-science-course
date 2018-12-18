# master function to solve the risk game problem

risk.game.solver <- function(num.attackers.init, num.defenders.init, num.simulations){
  
  attackers.remaining.vector <- NULL
  defenders.remaining.vector <- NULL
  attacker.victory.vector <- NULL
  
  for( i in 1:num.simulations ){
    
    battle.over <- FALSE
    num.attackers <- num.attackers.init
    num.defenders <- num.defenders.init
    
    while(battle.over == FALSE){
      
      if(num.attackers <= 1){
        battle.over <- TRUE
        attacker.victory <- FALSE
      } else if(num.defenders == 0){
        battle.over <- TRUE
        attacker.victory <- TRUE
      } else {
        num.attacker.dice <- getNumDice(num.armies=num.attackers, player="attacker")
        num.defender.dice <- getNumDice(num.armies=num.defenders, player="defender")
        
        # rolling dices
        attacker.roll <- rollDice(num.attacker.dice)
        defender.roll <- rollDice(num.defender.dice)
        battle.result <- getBattleResult(attacker.roll,defender.roll)
        
        # updating
        num.attackers <- max(num.attackers - battle.result[1], 0)
        num.defenders <- max(num.defenders - battle.result[2], 0)
        
      }
    }
    attackers.remaining.vector <- c(attackers.remaining.vector, num.attackers)
    defenders.remaining.vector <- c(defenders.remaining.vector, num.defenders)
    attacker.victory.vector <- c(attacker.victory.vector, attacker.victory)
  }
  # return vals
  result <- list(attackers.remaining = attackers.remaining.vector,
                 defenders.remaining = defenders.remaining.vector,
                 success.rate = sum(attacker.victory.vector)/length(attacker.victory.vector))
  return(result)
  
}

getNumDice <- function(num.armies, player){
  if (player == "attacker"){
    num.dice <- num.armies -1 # 1 army always remains in the home territory
    num.dice <- min(num.armies, 3) # attack with 3 max armies
  } else{
    num.dice <- min(num.armies, 2)
  }
  return(num.dice)
}


# Returns a dice roll for a given number of dice
rollDice <- function(num.dice){
  possible.values <- 1:6
  rolls <- sample(x = possible.values, size = num.dice, replace = TRUE)
  return(rolls) 
}

# print(rollDice(3))


getBattleResult <- function(attacker.roll, defender.roll){
  attacker.roll <- sort(attacker.roll, decreasing = TRUE)
  defender.roll <- sort(defender.roll, decreasing = TRUE)
  
  # to match lengths
  num.dice.to.compare <- min(length(attacker.roll), length(defender.roll))
  
  # vectors clipped
  attacker.roll <- attacker.roll[1:num.dice.to.compare]
  defender.roll <- defender.roll[1:num.dice.to.compare]
  
  # If Attacker won
  dice.win <- attacker.roll > defender.roll
  
  # num of individual losses (Boolean addition as 1,0 for TRUE, FALSE)
  defender.losses <- sum(dice.win)
  attacker.losses <- length(dice.win) - defender.losses
  
  result <- c(attacker.losses, defender.losses)
  return(result)
}