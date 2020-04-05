require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @name.split("").reverse.join("")
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @result = "#{@phrase}" * @number

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @result =  "#{@word1}"  ' '  "#{@word2}"  ' '  "#{@word3}"  ' '  "#{@word4}"  ' ' "#{@word5}" "."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
   @add = "#{@number1 + @number2}"
   @subtract = "#{@number1 - @number2}"
   @multiply = "#{@number1 * @number2}"
   @divide = "#{@number1 / @number2}"
     @result = "#{@add}"
    #  || "#{@subtract}" || "#{@multiply}" || "#{@divide}"
  end

end

# if @operation == "add"
#   @add = "#{@number1 + @number2}"
# elsif @operation == 'subtract'
#   @subtract = "#{@number1 - @number2}"
# elsif @operation == 'multiply'
#   @multiply = "#{@number1 * @number2}"
# elsif @operation == 'divide'
#   @divide = "#{@number1 / @number2}"
