#arrays.rb

#1. Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 5, 7, 9, 11]

number = 3
if arr.include?(3)
  puts "#{number} is in the array"
else
  puts "#{number} is NOT in the array"
end

#2. What will the following programs return? What is value of arr after each?
  #1. returned = 1  arr = [[b], [b, 2], [b, 3], [a, 1],...
  #2. returned = [1, 2, 3]  arr = [[b], [a, [1, 2, 3]]]

#3. How do you print the word "example" from the following array?
  arr = [["test", "hello", "world"],["example", "mem"]]
  puts arr[1][0]

#4. What does each method return in the following example?
  #1. 3    first occurence of argument .index(3)
  #2. error
  #3. 8    item at index postion 8

#5. What is the value of a, b, and c in the following program?
  # a = "e"
  # b = "T"
  # c = "A"

#6. What is the problem and how can it be fixed?
names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'    problem
# this syntaxt takes an int as index. the string cannot be interpreted here.
# to replace margaret w/ jody:
  names[3] = 'jody'

#7 Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

original_array = [1, 2, 3, 4, 5]
new_array = original_array.collect {|i| i + 2}
p original_array
p new_array
