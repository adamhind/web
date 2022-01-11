require 'sinatra'
require 'sinatra/reloader'



get '/' do
  "Hello World"
end

get '/secret' do 
  "The earth isn't flat"
end 

get '/help' do 
  "No one will help you"
end

get '/random-cat' do 
@name = ["Cat!", "Tabby!", "Sam!"].sample
erb(:index)
end 

get '/named-cat' do 
  @name = params[:name]
  erb(:index)
  end 


