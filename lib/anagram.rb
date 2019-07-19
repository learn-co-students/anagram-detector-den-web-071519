require "pry"

class Anagram

  attr_accessor :word

  def initialize (word)
    @word = word
  end

  def match (words_array)
    words_array.select do |word|
      sorted_letters = word.split("").sort
      sorted_letters == @word.split("").sort
    end
  end

end
