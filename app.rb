require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  #accepts a number and a phrase and returns that phrase in a string the number of times given.
  get '/say/:number/:phrase' do
    answer = ""

    params[:number].to_i.times do
      answer += params[:phrase].to_s
    end
    return answer
  end

  #accepts five words and returns a string containing all five words with . at the end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    array_with_values = []
    array_with_values = params.values #=> ["word1","word2","word3","word4","word5"]
    array_with_values.join(" ") + "."
  end

  #accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    answer = "cant do this kinda operation"
    
    case params[:operation]
    when "add"
      answer = (num1 + num2).to_s
    when "subtract"
      answer = (num1 - num2).to_s
    when "multiply"
      answer = (num1 * num2).to_s
    when "divide"
      answer = (num1 / num2).to_s
    else
      answer
    end

  end

end