# return.rb

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

def add_three(number)
  return number + 3
  number + 4  # we never get here as the method stops after the return statement
end

returned_value = add_three(4)
puts returned_value

add_three(5).times {|n| puts "this should print 8 times: #{n+1}"}
