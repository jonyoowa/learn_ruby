# Translates a phrase from English to Pig Latin
def translate phrase
  translated = []
  word_list = phrase.split

  # Apply translation rule to each word
  word_list.each do |word|
    translated << morphWord(word)
  end

  translation = translated.join(" ")
end

# Translates an individual word from English to Pig Latin
def morphWord word
  res = case word
  # Check for leading vowels
  when /^[aeiouy]/
    word + "ay"
  # Consider 'qu', 'squ' and one or more consonants as single phoneme
  when /^(qu+)(.*)/, /^(squ+)(.*)/, /^([^aeiouy]+)(.*)/
    $2 + $1 + "ay"
  # If there is no match, return 'word' (Error)
  else
    word
  end
end
