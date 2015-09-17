#intermediate_quiz_1.rb

#1. Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

#For this exercise, write a one-line program that creates the following output 10 times:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

10.times do
  puts "The Flintstones Rock!"
  puts " The Flintstones Rock!"
  puts "  The Flintstones Rock!"
end

10.times {|number| puts " " * number + "The Flintstones Rock!"}

#2. Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
my_hash = {}
statement.split("").each do |char|
  if char == " "
    next
  elsif my_hash.include?(char)
    my_hash[char] += 1
  else
    my_hash[char] = 1
  end
end

puts my_hash.sort.inspect

#3. The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?
# we are trying to concatenate a string and an int
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

#4. What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# here we p 1. Then 2( at index[1]) is removed and we p 3 and
#What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
1
2

#5. Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  if number <= 0
    puts "factors works for positive integers > 0"
  else
    dividend = number
    divisors = []
    until dividend == 0
      divisors << number / dividend if number % dividend == 0
      dividend -= 1
    end
    divisors.inspect
  end
end
#Alyssa noticed that this will fail if you call this with an input of 0 or a negative number and asked Alan to change the loop. How can you change the loop construct (instead of using begin/end/until) to make this work? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.
puts factors(2)
puts factors(20)
puts factors(100)
puts factors(-3)
#  Bonus 1
#  What is the purpose of the number % dividend == 0 ?
#  this indicates a int divisible by another int- e.g. No remainder
#  Bonus 2
#  What is the purpose of the second-to-last line in the method (the divisors before the method's end)?
# this is the implicit return

# 6. Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

#She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

# the return value here is the same
# I'm not clear on the difference

#7. Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator, A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

#Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?

#limit = 15

def fib(first_num, second_num, limit=15)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
#How would you fix this so that it works?

#8. In another example we used some built-in string methods to change the case of a string. A notably missing method is something provided in Rails, but not in Ruby itself...titleize! This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title.

#Write your own version of the rails titleize implementation.
def titleize(title)
  titleized_array = []
  title.split(" ").each {|word| titleized_array << word.capitalize}
  titleized_array.join(" ")
end

puts titleize("here's a title for you")

#9. Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
#Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below

munsters.each do |name, info|
  puts info["age"]
  case info["age"]
  when (0..17)
    info["age_group"] = "kid"
  when (18..64)
    info["age_group"] = "adult"
  else
    info["age_group"] = "senior"
  end
end
puts munsters.inspect

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
#Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

#hint: try using a case statement along with Ruby Range objects in your solution
