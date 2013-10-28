def translate(word)
    arr = word.split(" ")
    arr.map do |x|
      num = x.index(/[aeiou]/)
      num += 1 if x[num - 1] == "q"
      x[num..-1] + x[0...num] + "ay"
    end.join(" ")
end

