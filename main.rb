require "./player.rb"
require "./question.rb"

# Game initialization with query of pplayer names
puts `clear`
puts "
▀█▀ █░█░█ █▀█ ▄▄ █▀█ ▄▄ █▀█ █░░ ▄▀█ █▄█ █▀▀ █▀█   █▀▄▀█ ▄▀█ ▀█▀ █░█   █▀▀ ▄▀█ █▀▄▀█ █▀▀
░█░ ▀▄▀▄▀ █▄█ ░░ █▄█ ░░ █▀▀ █▄▄ █▀█ ░█░ ██▄ █▀▄   █░▀░█ █▀█ ░█░ █▀█   █▄█ █▀█ █░▀░█ ██▄

"
puts "Let's start with player names, shall we?"
puts "Player 1, what is your name?"
player1 = gets.chomp
puts "OK #{player1} it is.."
puts
puts "Player 2, what is your name?"
player2 = gets.chomp
puts "#{player2} sounds awesome.."
puts
puts "Let's begin?! (Press Enter)"
gets.chomp
puts `clear`

# Generate the two players for query names
P1 = Player.new(player1.to_s)
P2 = Player.new(player2.to_s)

def turn(current_player)
  puts "#{current_player.name}: What does #{Question.num1} plus #{Question.num2} equal?"
  answer = gets.chomp
  # Takes in an answer and verifies with Question -> answer
  Question.validate(answer) ? 
  (puts "YES! You are correct.") : 
  (
    current_player.wrong
    puts "Seriously? No!"
    )
  puts "#{P1.name}: #{P1.life}/3 vs #{P2.name}: #{P2.life}/3"
end


# Manages player turn (current_player), and displays Question
loop {
  turn(P1)
  break puts "Player 2 wins with a score of #{P2.life}/3" if (P1.gameover)
  turn(P2)
  break puts "Player 1 wins with a score of #{P1.life}/3" if (P2.gameover)
  puts "Press enter to continue.."
  gets.chomp
  puts `clear`
  puts "-------------- NEW TURN --------------"
}
puts
puts "

░██████╗░░█████╗░███╗░░░███╗███████╗  ░█████╗░██╗░░░██╗███████╗██████╗░
██╔════╝░██╔══██╗████╗░████║██╔════╝  ██╔══██╗██║░░░██║██╔════╝██╔══██╗
██║░░██╗░███████║██╔████╔██║█████╗░░  ██║░░██║╚██╗░██╔╝█████╗░░██████╔╝
██║░░╚██╗██╔══██║██║╚██╔╝██║██╔══╝░░  ██║░░██║░╚████╔╝░██╔══╝░░██╔══██╗
╚██████╔╝██║░░██║██║░╚═╝░██║███████╗  ╚█████╔╝░░╚██╔╝░░███████╗██║░░██║
░╚═════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝  ░╚════╝░░░░╚═╝░░░╚══════╝╚═╝░░╚═╝
"
puts "Press enter"
gets.chomp
puts `clear`
puts "
          𝕊𝕖𝕖 𝕪𝕠𝕦 𝕚𝕟 𝕥𝕙𝕖 𝕟𝕖𝕩𝕥 𝕘𝕒𝕞𝕖

  █▀▄ █▀▀ █▀ █ █▀▀ █▄░█ █▀▀ █▀▄   █▄▄ █▄█
  █▄▀ ██▄ ▄█ █ █▄█ █░▀█ ██▄ █▄▀   █▄█ ░█░


░█──░█ █▀▀█ █▀▄▀█ █▀▀█ █▀▀ 　 ░█▀▀▀█ ▀▀█ █▀▀▄ ─▀─ █── 
░█▄▄▄█ █▄▄█ █─▀─█ █▄▄█ █── 　 ░█──░█ ▄▀─ █──█ ▀█▀ █── 
──░█── ▀──▀ ▀───▀ ▀──▀ ▀▀▀ 　 ░█▄▄▄█ ▀▀▀ ▀▀▀─ ▀▀▀ ▀▀▀

"
