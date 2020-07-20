require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse 
    @reverse_name
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i**2 
    @number.to_s 
  end 

end