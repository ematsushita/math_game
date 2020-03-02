require './player.rb'


class Game 
  attr_accessor :player1, :player2, :counter

  def initialize 
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @counter = 0
  end

  def check_lives(player)
    if player.lives == 0 
      return true
    else
      false
    end
  end

  def play(player)
    question1 = Question.new
    answer = question1.answer
    puts "----- NEW TURN -----"
    puts "Player #{player.name}: #{question1.question}"
    print "> "
    player_answer = gets.chomp

    if player_answer.to_i === question1.answer
      puts "YES! You are correct"
    else
      puts "Seriously? No!"
      player.lose
    end
    
    puts "P1: #{(player1.lives)}/3 vs P2: #{player2.lives}/3"

  end


  def game 

    while true
      self.counter += 1
      turn = self.counter % 2 == 0 ? player2 : player1
      play(turn)

      if check_lives(player1)
        puts "----- GAME OVER -----"
        puts "Game over! Player 2 wins with a score of #{player2.lives}/3"
        exit(0)
      elsif check_lives(player2)
        puts "----- GAME OVER -----"
        puts "Game over! Player 1 wins with a score of #{player1.lives}/3"
        exit(0)
      end
    end

  end


end

