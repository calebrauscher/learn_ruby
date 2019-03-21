#write your code here
def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, times=2)
    ("#{word} " * times).strip
end

def start_of_word(word, num=1)
    word[0,num]
end

def first_word(words)
    words.split()[0]
end

def titleize(words)
    split_words = words.split()
    little_words = ["and", "the", "over", "is","has","was"]
    split_words[0].capitalize!
    split_words.each {
    |word| word.capitalize! if little_words.index(word) == nil 
    }
    split_words.join(' ')
end