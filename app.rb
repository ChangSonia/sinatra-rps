require "sinatra"
require "sinatra/reloader"


get("/") do
  erb(:home,{:layout => :wrapper})
end


# Play rock
get("/rock") do
  moves = ["rock","paper","scissors"]
  @opponent = moves.sample
  if @opponent == "rock"
    @outcome = "tied"
  elsif @opponent == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:rock,{:layout => :wrapper})
end


# Play paper
get("/paper") do
  moves = ["rock","paper","scissors"]
  @opponent = moves.sample
  if @opponent == "paper"
    @outcome = "tied"
  elsif @opponent == "scissors"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:paper,{:layout => :wrapper})
end


# Play scissors
get("/scissors") do
  moves = ["rock","paper","scissors"]
  @opponent = moves.sample
  if @opponent == "scissors"
    @outcome = "tied"
  elsif @opponent == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:scissors,{:layout => :wrapper})
end
