#I'm particularly proud of this one. Chris helped me with a bit of refactoring, but I made it run all by myself, and the code below is 95% mine.
def translate(word)
    arr = word.split(" ")
    arr.map do |x|
      num = x.index(/[aeiou]/)
      num += 1 if x[num - 1] == "q"
      x[num..-1] + x[0...num] + "ay"
    end.join(" ")
end

