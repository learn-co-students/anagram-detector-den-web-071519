# Your code goes here!
require "pry"
class Anagram
    attr_accessor :word
    def initialize(word)
        @word = word    
    end
    def match(other)
        match_word = []
        other.each do |word|
            if @word.split(//).sort == word.split(//).sort
                match_word << word
            end
        end
        match_word
    end
end