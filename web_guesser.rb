require 'sinatra'
require 'sinatra/reloader'
require 'pry'

SECRET_NUMBER = rand(101)

get '/' do
  guess = params["guess"].to_i
  message = check_guess(guess)
  erb :index, :locals => {:number => SECRET_NUMBER, :message => message}
end

def check_guess(guess)
if guess - SECRET_NUMBER > 5
    "Really?! WAY TOO HIGH!"
  elsif SECRET_NUMBER - guess > 5
    "Are you even trying? is WAY TOO LOW!"
  elsif guess > SECRET_NUMBER
    "You must live in Colorado...TOO HIGH."
  elsif guess < SECRET_NUMBER
    "And...TOO LOW."
  else
    "You have chosen wisely...that is the correct cup with the number #{SECRET_NUMBER} on it."
  end
end
