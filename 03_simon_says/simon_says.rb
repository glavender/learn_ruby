def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, n = 2)
  ((word + " ") * (n - 1)) + word
end

def start_of_word(word, n = 1)
  word[0..n - 1]
end

def first_word(sentence)
  sentence.split(" ")[0]
end

def titleize(sentence)
    sentence = sentence.capitalize.split(' ').map { |x| (["the", "a", "an", "and", "in", "of", "over"].include? x) ? x : x.capitalize }.join(' ')
end