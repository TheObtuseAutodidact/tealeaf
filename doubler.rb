# doubler method to load into irb

# def doubler(start)
#   puts start * 2
# end

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end

puts doubler(1)
