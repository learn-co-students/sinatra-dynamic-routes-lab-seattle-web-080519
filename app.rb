require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    num = (params[:number].to_i) ** 2
    num.to_s
  end

  get '/say/:number/:phrase' do
    say = ' '
    params[:number].to_i.times do
      say += params[:phrase]
    end
    say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
  
    case params[:operation]
    when 'add'
      (number1 + number2).to_s
    when 'subtract'
      (number2 - number1).to_s
    when 'multiply'
      (number1 * number2).to_s
    when 'divide'
      (number1 / number2).to_s
    end
  end 
end
