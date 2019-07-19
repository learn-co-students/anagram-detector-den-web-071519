# Your code goes here!
class Anagram

    attr_accessor :name

    def initialize(word)
        @name = word
    end

    def match(array)
        array.select {|w| w.split('').sort == @name.split('').sort}
    end

end


# attr_accessor :emails

#     def initialize(emails)
#         @emails = emails
#     end

#     def parse
#         emails.split(/, | /).uniq
#     end