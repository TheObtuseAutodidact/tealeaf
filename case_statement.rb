#case_statement.rb

a = 5

answer = case a
when 5
  "a is 5"
when 6
  "a is 6"
else
  "a is neither 5, nor 6"
end

puts answer

a = 0
if a
  puts "how can this be true?"
else
  puts "it is not true"
end
