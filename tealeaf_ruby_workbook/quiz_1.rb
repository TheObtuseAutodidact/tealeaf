#quiz_1.rb

#1. What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# 1
# 2
# 2
# 3
#   .uniq does not mutate numbers

#2 Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios: 1. what is != and where should you use it? 2. put ! before something, like !user_name 3. put ! after something, like words.uniq! 4. put ? before something 5. put ? after something 6. put !! before something, like !!user_name

# ! and ? tend to be used to modify a method or to indicate something about that method
# !, the bang operator can be used as negation in the case of != (instead of ==) it means doesn not equal
# it may also be used with a boolean operatior to change its return value to its opposite  e.g. !true == false
# additionally it can be used at the end of a method name to indicate this method mutates the data on which the method operates
# a simple example would be using the question above:
# if we use the method .uniq! instead of .uniq (these are different methods) the array pointed to by the variable numbers
# is now changed or mutated (numbers = [1, 2, 3])
# ? is often used at the end of a method name to indicate that the method returns a boolean value

#3 Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.sub!("important", 'urgent')
puts advice

#4. The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
#What would the following return?

numbers.delete_at(1)   # return => 2     numbers now equals [1, 3, 4, 5]
numbers.delete(1)    # return value = 1  numbers now equals [2, 3, 4, 5]

#5. Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.

puts 42.between?(10, 100)

#6. Starting with the string:

famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.
famous_words = "Four score and " + famous_words
puts famous_words
famous_words = "seven years ago..."
preamble = "Four score and "
puts "#{preamble}#{famous_words}"

#7. Fun with gsub:

# def add_eight(number)
#   number + 8
# end
#
# number = 2
#
# how_deep = "number"
# 5.times { how_deep.gsub!("number", "add_eight(number)") }
#
# p how_deep
# This gives us a string that looks like a "recursive" method call:
#
# "add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
# If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call
#
# eval(how_deep)
# what will be the result?

# how_deep would return 42  eval() ?

#8. If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
#We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
#Make this into an un-nested array.
my_array = ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten!
puts my_array.inspect

#9. Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
#Turn this into an array containing only two elements: Barney's name and Barney's number
flintstones.select! {|k, v| k == "Barney"}
puts flintstones.inspect

#10. Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
#Turn this array into a hash where the names are the keys and the values are the positions in the array.
index_array = (0..(flintstones.length) - 1).to_a
flintstones = Hash[flintstones.zip(index_array)]
puts flintstones.inspect
