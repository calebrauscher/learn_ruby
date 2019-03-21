#write your code here

def translate(str)
    split_words = str.split()
    pig_latin = Array.new
    split_words.each {|word|
#word starts with a vowel
        if /[aeiou]/ =~ word[0]
            word = word + 'ay'
#word starts with qu
        elsif /qu/ =~ word
            #square
            q_index = word.index('qu')
            puts q_index
            word = word.slice(q_index+2..word.length) + word.slice(0..q_index+1) + 'ay'
#capital word
        elsif /[AEIOU]/ =~ word[0]
            word.downcase!
            constanant = word.index(/[aeiou]/,0)
            word = word.slice(constanant..constanant.length) + word.slice(0..constanant-1) + 'ay'
#starts with constanant
        elsif /[aeiou]/ =~ word
            constanant = word.index(/[aeiou]/,0)
            word = word.slice(constanant..word.length) + word.slice(0..constanant-1) + 'ay'
#no vowels
    else
        word += 'way'
    end
    pig_latin.push(word)
    }
    pig_latin.join(' ')

end
