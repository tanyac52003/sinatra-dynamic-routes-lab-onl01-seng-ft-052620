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
  
  get '/say/:number/:phrase' do 
    string = ""
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    @number.times do 
      @string += @phrase
      @string += "\n"
    end 
    "#{@string}"
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 
  
  get '/:operation/:number1/:number2' do
    
  end 

end