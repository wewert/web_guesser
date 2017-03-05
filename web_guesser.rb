require 'sinatra'
require 'sinatra/reloader'

x = rand(101)
get '/' do
y = "Your secret number is #{x}"
end
