#1. Write down whether the following expressions return true or false. Then type the expressions into irb to see the results.
#  1. false
#  2. false
#  3. false
#  4. true
#  5. true

#2. Write a method that takes a string as argument. The method should return the all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def maybe_to_upper(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

  puts maybe_to_upper("too short")
  puts maybe_to_upper("this should be in all caps")

#3. Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Enter an int between 0 and 100 (inclusive): "
num = gets.chomp.to_i  #strings entered here are converted to 0. maybe I'll fix that later.

if (num >= 0) && (num <= 50)
  puts "your int is between 0 and 50"
elsif (num > 50) && (num <= 100)
  puts "your int is between 51 and 100"
else
  puts "Nope"
end

#4. What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.
  #1. FALSE
  #2. Did you get it right?
  #3. Alright now!

#5. Rewrite your program from exercise 3 using a case statement. Wrap each statement in a method and make sure they both still work.
  def zero_to_100(num)
    if (num >= 0) && (num <= 50)
      'a'
    elsif (num > 50) && (num <= 100)
      'b'
    else
      'c'
    end
  end

  zero_to_100(10)
  zero_to_100(55)
  zero_to_100(101)
puts "***************\n\n"
  def zero_to_100_again(num)
    answer = zero_to_100(num)
    case answer
    when 'a' #and (num <= 50)
      puts "your int is between 0 and 50"
    when 'b'
      puts "your int is between 51 and 100"
    when 'c'
      puts "Nope"
    end
  end
zero_to_100_again(5)
zero_to_100_again(55)
zero_to_100_again(101)
###  I felt a little unclear on what was being asked for here

#6. When you run the following code...  Why do you get this error and how can you fix it?
  # Missing keyword "end" after if/else statement. 
