#loops_and_interators.rb
#exercises

#1. What does the each method in the following program return after it is finished executing?
  #1
  #2
  #3
  #4
  #5

#2. Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

puts "press 'Y' to continue and 'STOP' to exit"
input = gets.chomp

while input != 'STOP'
  puts "press 'Y' to continue and 'STOP' to exit"
  input = gets.chomp
  puts "you typed #{input}"
end

#3. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

my_array = [ "zero", "one", "two", "three"]

my_array.each_with_index {|item, index| puts "#{index} => #{item}"}

#4. Write a method that counts down to zero using recursion.

def countdown(num)
  puts num
  if num > 0
    countdown(num - 1)
  end
end

countdown(10)
