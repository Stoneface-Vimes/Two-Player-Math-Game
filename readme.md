TASKS


1:Extract nouns for Classes

Player
Questions
Turn

2: Write their roles

Player: will be extended for player 1 and 2.
Will contain the players lives
Lives can be mutated to reflect losses
Tracks lives

Questions: Contains the logic for generating questions
Recives user input (2 numbers)
Generates a question based on those numbers
returns a question and it's answer


Turn: Contains the logic for running a turn
On the first turn, randomly picks a player to go first
Afterwards, the turn alternates between players
Promps the player whose turn it is to make a question
Send those arugments to the questions class
Recives the question and answer from the questions class
Presents the question to the player whose turn it is to answer a question
Determines if they got it correct using the answer
Adjusts lives accordingly
Check win condition