require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name}".reverse
  end

  get "/square/:number" do
    @num = params[:number]
    n = "#{@num}".to_i
    r = n ** 2
    r.to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    n = "#{@number}".to_i
    r = "#{@phrase}" * n 
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} " + "#{@w2} " + "#{@w3} " + "#{@w4} " + "#{@w5}" + "."
  end

  get "/:operation/:number1/:number2" do
    @n1 = params[:number1]
    @n2 = params[:number2]
    @op = params[:operation]
    nu1 = "#{@n1}".to_i
    nu2 = "#{@n2}".to_i
      case @op
      when "add"
      r1 = nu1 + nu2 
      r1.to_s
      when "subtract"
      r2 = nu1 - nu2 
      r2.to_s
      when "multiply"
      r3 = nu1 * nu2 
      r3.to_s
      when "divide"
      r4 = nu1 / nu2
      r4.to_s
      end
  end

end