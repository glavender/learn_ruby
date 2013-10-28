def translate(word)
  if word.include? " "
    arr = word.split(" ")
    y = 0
    arr.each do |x|
      num = x.index(/[aeiou]/)
      arr[y] = x[num..-1] + x[0...num] + "ay"
      y += 1
    end
    arr.join(" ")
  else    
    num = word.index(/[aeiou]/)
    word[num..-1] + word[0...num] + "ay"
  end
end