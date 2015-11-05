require 'sinatra'
require 'sinatra/reloader'

names = ["andre", "nick", "alex", "andy"]

get '/' do
 erb :index
end

get '/names' do
  @names = names
  erb :names
end

get '/:num_bottles' do
  @num_bottles = params[:num_bottles].to_i
  @next = @num_bottles - 1
  erb :num_bottles
end
