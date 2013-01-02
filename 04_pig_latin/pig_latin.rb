VOWELS = ["a", "e", "i", "o", "u"]
CONSONANT_PREFIX = /(\A[^aeio]{1,3})(\w*)/

def translate(word) #word = "apple pie"
  words = word.split(" ") #["apple", "pie"]
  translated_words = words.map do |wrd|
    if start_with_vowel?(wrd) 
      vowel_translate(wrd) #"appleay"
    else
      consonant_translate(wrd) #"iepay"
    end
  end
  #translated_words == ["appleay", "iepay"]
  output = ""
  translated_words.each do |twrd|
    output << twrd + " " 
  end
  #translated_words == "appleay iepay "
  output.strip #"appleay iepay"
end


private

def start_with_vowel?(word)
  VOWELS.include?(word[0])
end

def vowel_translate(word)
  word + "ay"
end

def consonant_translate(word)
  prefix = word.match(CONSONANT_PREFIX)
  word = prefix[2] + prefix[1] + "ay"
end


