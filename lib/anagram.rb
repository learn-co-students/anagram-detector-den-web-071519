require 'pry'

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array_of_anagrams)
        answer = []
        array_of_anagrams.each do |option|
            letters = option.split("")
            if letters.sort == self.word.split("").sort
                answer << option
            end
        end
        answer
    end

end
