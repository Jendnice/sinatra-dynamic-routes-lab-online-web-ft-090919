require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name]
    erb :reversename
  end 

  get "/square/:number" do 
    @number = params[:number].to_i 
    erb :square 
  end 
  
  get "/say/:number/:phrase" do 
   @phrase = params[:phrase]
   @number = params[:number].to_i
   erb :saynumberphrase
  end 
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    erb :saywords
  end 
  
  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    erb :operation
  end 
  
end