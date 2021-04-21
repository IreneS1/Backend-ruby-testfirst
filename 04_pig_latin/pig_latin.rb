# Rule 1: If a word begins with a vowel sound, add an 
#"ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move 
#it to the end of the word, and then add an "ay" sound 
#to the end of the word.


def translate(str)
    str.gsub!(/\w+/) { |word| translate_word(word)}
end

def translate_word(phrase)
    phrase.split(" ").map do |word|
        word = word.gsub("qu", " ")
        word.gsub!(/^([^aeiou]*)(.*)/,'\2\1ay')
        word = word.gsub(" ", "qu")
    end.join(" ")
   
end



t = translate("eat pie")
puts t
