Rails.application.routes.draw do
  get("/rock", { :controller => "rps", :action => "rock" })

  get("/paper", { :controller => "rps", :action => "paper" })

  get("/scissors", { :controller => "rps", :action => "scissors" })

  get("/", { :controller => "rps", :action => "home"})
  # /rps/:move
  # ("rock", "scissors")

  # /rps/rock
end
