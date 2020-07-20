require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse 
    @reverse_name
  end 
  
  get '/squarenumber/:num' do 
    @num = params[:num].to_i **2 
    @num.to_s 
  end 

end