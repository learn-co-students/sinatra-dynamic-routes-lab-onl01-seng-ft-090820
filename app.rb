require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end 


  get '/square/:number' do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end 


  get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @phr = params[:phrase]
    @num.times { str += "#{@phr}\n" }
    str
  end 


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 


  get '/:operation/:number1/:number2' do 
    
  end 
end