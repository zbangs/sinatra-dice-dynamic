require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/dice/:num_rolls/:num_sides") do
  @num_rolls = params.fetch("num_rolls").to_i
  @num_sides = params.fetch("num_sides").to_i
  @rolls = []

  @num_rolls.times do
    @rolls.push(rand(1..@num_sides))
  end

  erb(:flexible)
end
