class RpsController < ApplicationController
  def paper
    @random_move = ["rock", "paper", "scissors"].sample

    render({ :template => "game_templates/paper" })
  end

  def rock
    @random_move = ["rock", "paper", "scissors"].sample

    render({ :template => "game_templates/rock" })
  end

  def scissors
    @random_move = ["rock", "paper", "scissors"].sample

    render({ :template => "game_templates/scissors" })
  end

  def home
    render({ :template => "layouts/home" })
  end

  def rock_conditional 
    if @random_move == "scissors"
      puts "We won!"
    elsif @random_move == "paper"
      puts "We lost!"
    elsif @random_move == "rock"
      puts "We tied!"
    end
  end
  
  
  def scissors_conditional 
    if @random_move == "scissors"
      puts "We tied!"
    elsif @random_move == "paper"
      puts "We won!"
    elsif @random_move == "rock"
      puts "We lost!"
    end
  end
  
  def paper_conditional 
    if @random_move == "rock"
      @paperboi = "We won!"
    elsif @random_move == "scissors"
      @paperboi = "We lost!"
    elsif @random_move == "paper"
      @paperboi = "We tied!"
    end
  end

  @random_move = ["rock", "paper", "scissors"].sample

  # paper_conditional = @paperboi
  rock_conditional = @rockman
  scissors_conditional = @scissorman
end
