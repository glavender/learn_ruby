def translate(word)
    arr = word.split(" ")
    y = 0
    arr.each do |x|
      num = x.index(/[aeiou]/)
      arr[y] = x[num..-1] + x[0...num] + "ay"
      y += 1
    end
    arr.join(" ")
end

puts translate("apple")
puts translate("cat")
puts translate("cherry")
puts translate("three")
puts translate("eat pie")