# echo method that returns word 
def echo(word)
    word
end

# shout method that returns word in all caps
def shout(word)
    word.upcase
end

# repeat method returns word num times
def repeat(word, num = 2)
    [word] * num * ' '
end

# start_of_word returns the declared letters
def start_of_word(word, num = 1)
    # word.chars.first
    word[0,num]
end

# first_word method returns the first word of the string parameter
def first_word(phrase)
    phrase.split.first
end

# titleize method returns words with the first letter capitalized
def titleize(str)
    str.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ")  
  phrase  # returns the phrase with all the excluded words
end
