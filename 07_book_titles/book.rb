class Book

def title=(title)
  @title = title
end

#Spent a while refactoring this method - I'm happy with the way it turned out.
def title
  @title = @title.capitalize.split(' ').map { |x| (["the", "a", "an", "and", "in", "of"].include? x) ? x : x.capitalize }.join(' ')
end

end