require 'sinatra'
require 'sinatra/reloader'


def check_guess(number, guess)
    if guess - number < -5
        "Way too low!"
    elsif guess - number > 5
        "way too high!"
    elsif guess > number 
        "too high"
    elsif guess < number
        "too low"
    elsif guess == number
        "you got it boi!"
    end
end

number = rand(100)



get '/' do
    guess = params["guess"]
    message = check_guess(number,params["guess"].to_i)
    erb :index, :locals => {:number => number, :message => message, :guess => params["guess"]}
end