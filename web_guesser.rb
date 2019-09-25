require 'sinatra'
require 'sinatra/reloader'

get '/' do
    "The secret value is #{rand(0..100)}"
end