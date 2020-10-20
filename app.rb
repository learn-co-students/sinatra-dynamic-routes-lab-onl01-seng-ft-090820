require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    name = params[:name].reverse 
    "#{name}"
  end 

  get '/square/:number' do 
    num = params[:number].to_i**2
    "#{num}"
  end 

  get '/say/:number/:phrase' do 
    number = params[:number].to_i
    phrase = params[:phrase]
    string = ""
    number.times do 
      string += phrase
    end 
    string
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      result = number1 + number2
      "#{result}"
    elsif operation == "subtract"
      result2 = number1 - number2
      "#{result2}"
    elsif operation == "multiply"
      result = number1 * number2
      "#{result}"
    elsif operation == "divide"
      result = number1 / number2
      "#{result}"
    end 
  end


end