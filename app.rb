require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name_a = params[:name]
    "#{@name_a}".reverse
  end

  get "/square/:number" do
    @number = params[:number]
    n = "#{@number}".to_i
    q = n ** 2
    q.to_s        
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    n = "#{@number}".to_i
    p = "#{@phrase}" * n

  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operation = params[:operation]
    num1 = "#{@number1}".to_i
    num2 = "#{@number2}".to_i
      case @operation
        when"add"
          op1 = num1 + num2
          op1.to_s
        when "subtract"
          op2 = num1 - num2
          op2.to_s
        when "multiply"
          op3 = num1 * num2
          op3.to_s
        when "divide"
          op4 = num1 / num2
          op4.to_s
        end        
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
          @w1 = params[:word1]
          @w2 = params[:word2]
          @w3 = params[:word3]
          @w4 = params[:word4]
          @w5 = params[:word5]
          "#{@w1} " + "#{@w2} " + "#{@w3} " + "#{@w4} " + "#{@w5}" + "."
        end

end