require 'pry'

def reorder_word(word)
  word.split("").sort.join("")
end

class Anagram

  attr_accessor :match_word

  def initialize(match_word)
    @match_word = match_word
  end

  def match(array)

    successful_matches = []
    array.each {|anagram_word|
      # binding.pry
      if reorder_word(anagram_word) == reorder_word(@match_word)
        successful_matches << anagram_word
      end
      }
    successful_matches

  end

end
