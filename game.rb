class Player
  # Keeps track of players' life.
  # Starts each player with 3 lives
  # Deducts a life for wrong answer
end

class Question
  # Generates a question 
  # Generates the correct answer for the question
end

class Game
  # Displays message welcome, new turn, etc..
  # Manages player turn (current_player), and displays Question
  # Takes in an answer and verifies with Question -> answer
  # Sends the result to Player
  # Takes in the results from Player and diplays at the end of each turn.
  # If game over (Player) displays game over
end
