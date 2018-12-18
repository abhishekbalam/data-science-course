# Risk Board Game Example --------------------------------------------------

#Construct a function that determines the probable outcome of a risk battle.

#Details: The below is an example of solving a problem by creating simulating
#the situation.  Simulations that involve drawing from probability
#distribtutions are referred to as Monte Carlo simulations.

#Simulation Rules: The RISK battle has an attacker and a defender.  The attacker
#can attack with # of armies - 1.  It requires 1 army to remain in the territory
#from where the attack is being laucned.  The number of dice the attacker gets =
#the number of armies with which it is attacking with a maximum of 3 dice.  The 
#number of defender dice = the number of defenders with a maximum of 2 dice. 
#After the attacker and defender have rolled their dice, the top attacker role 
#is compared with the top defender role, then the second highest roles are 
#compared if necessary.  With each comparrison, the attacker wins if they have 
#the higher role.  The defender wins if they have the higher role, or tie.  For 
#example, attacker has 5 armies, defender has 3.  Attacker's 3 roles are 5, 2, 
#3.  Defender's roels are 3,3.  Defender loses 1 army (5 vs 3) and the Attacker 
#loses 1 army (3 vs 3).  The battles are repeated until either the defender is
#out of armies, or the attacker is down to 1 army.

# returns num  of dice to rll given the number of armies and whether a player is
# attacker or defender
