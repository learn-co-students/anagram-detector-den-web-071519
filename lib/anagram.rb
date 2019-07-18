require 'pry'

class Anagram
    attr_accessor :word
    
    def initialize word
        @word = word.chars.sort.join 
    end

    def match array
        niceWords = []
        returnWords = []
        array.each_with_index do |word, index|
            niceWords << word.chars.sort.join
        end
        
        niceWords.each_with_index do |word, index|
            if @word == word
                returnWords << array[index]
            end
        end
        returnWords
    end
end