require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
    samp = ("a".."z").to_a.sample
    @letters << samp
    end
  end

  def score
  eng_word = JSON.parse(open("https://wagon-dictionary.herokuapp.com/#{params[:word]}").read)["found"]
    if params[letters].lenght<= @letters.lenght && eng_word
    a = "Congrats #{word} is an english word!"
   else
    b = "Sorry, #{word} is does not seem to be an english word or is to long."
    end

  end
end

# The word can't be built out of the original grid //
# The word is valid according to the grid, but is not a valid English word
# The word is valid according to the grid and is an English word
