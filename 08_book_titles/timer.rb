class Timer

def seconds=(seconds)
  @seconds = seconds
end

def seconds
  @seconds = 0
end

def time_string
  "#{'%02d' % (@seconds / 3600)}:#{'%02d' % (@seconds % 3600 / 60)}:#{'%02d' % (@seconds % 60)}"
end  

end