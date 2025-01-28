require "sinatra"
require "sinatra/reloader"


get("/") do
  erb(:home,{:layout => :wrapper})
end


# Play rock
get("/rock") do
  moves = ["rock","paper","scissor"]
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
  moves = ["rock","paper","scissor"]
  @opponent = moves.sample
  if @opponent == "paper"
    @outcome = "tied"
  elsif @opponent == "scissor"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:paper,{:layout => :wrapper})
end


# Play scissor
get("/scissor") do
  moves = ["rock","paper","scissor"]
  @opponent = moves.sample
  if @opponent == "scissor"
    @outcome = "tied"
  elsif @opponent == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:scissor,{:layout => :wrapper})
end
