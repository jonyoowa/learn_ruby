#write your code here
def echo speech
  speech
end

def shout speech
  speech.upcase
end

def repeat speech, times=2
  reply = ""
  while times > 0
    reply += speech + " "
    times -= 1
  end
  reply.strip
end

def start_of_word word, num
  word[0..num-1]
end

def first_word speech
  words = speech.split(" ")
  words[0]
end

def titleize speech
  littleWords = ["and", "over", "the"]
  words = speech.split.map { |word| 
    if littleWords.include?(word)
      word
    else
      word.capitalize
    end
  }

  words.first.capitalize!
  words.join(" ")
end


