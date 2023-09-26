class RpsController < ApplicationController
  def paper
    @random_move = ["rock", "paper", "scissors"].sample
    paper_conditional
    render({ :template => "game_templates/paper" })
  end

  def rock
    @random_move = ["rock", "paper", "scissors"].sample
  rock_conditional
    render({ :template => "game_templates/rock" })
  end

  def scissors
    @random_move = ["rock", "paper", "scissors"].sample
    scissors_conditional
    render({ :template => "game_templates/scissors" })
  end

  def home
    render({ :template => "layouts/home" })
  end

  def rock_conditional 
    if @random_move == "scissors"
      @rockman = "We won!"
    elsif @random_move == "paper"
      @rockman = "We lost!"
    elsif @random_move == "rock"
      @rockman = "We tied!"
    end
  end
  
  
  def scissors_conditional 
    if @random_move == "scissors"
      @scissorman = "We tied!"
    elsif @random_move == "paper"
      @scissorman = "We won!"
    elsif @random_move == "rock"
      @scissorman = "We lost!"
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

end
