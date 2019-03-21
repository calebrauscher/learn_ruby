class Book
    attr_accessor :title

    def title=(str)
        split_words = str.split()
        little_words = ["and", "the", "over", "is","has", "in", "of", "a", "an"]
        split_words[0].capitalize!
        split_words.each {
        |word| word.capitalize! if little_words.index(word) == nil 
        }
        @title = split_words.join(' ')
    end
end
