#exercises.rb
#  the end of intro to programming

#1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
puts "\nexercise #1:"
(1..10).to_a.each {|num| puts num}
puts "\n\n"
#2. Same as above, but only print out values greater than 5

puts "\nexercise #2"
Array(1..10).each {|num| puts num if num > 5}

#3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
puts "\nexercise #3\n"
new_array = Array(1..10).select {|num| num.odd?}
puts new_array

#4. Append "11" to the end of the original array. Prepend "0" to the beginning.
puts "\nexercise #4"
my_array = Array(1..10)
my_array << 11
puts my_array.inspect
my_array.unshift(0)
puts my_array.inspect

#5. Get rid of "11". And append a "3".
puts "\nexercise #5"
my_array.pop
puts my_array.inspect
my_array << 3
puts my_array.inspect

#6. Get rid of duplicates without specifically removing any one value.
puts "\nexercise #6"
my_array.uniq!
puts my_array.inspect

#7. What's the major difference between an Array and a Hash?
   # An array is an ordered collection of objects
   # A has is a collection of values associated/accessed with/by a key

#8. Create a Hash using both Ruby syntax styles.
{:one => 1, :two => 2, :three => 3}
{one: 1, two: 2, three: 3}

#9. Suppose you have a hash:
puts "\nexercise #9"
  h = {a:1, b:2, c:3, d:4}

  #1. Get the value of key `:b`.
  puts h[:b]

  #2. Add to this hash the key:value pair `{e:5}`
  h[:e] = 5
  puts h.inspect

  #3. Remove all key:value pairs whose value is less than 3.5
  h.reject! {|k, v| v < 3.5}
  puts h.inspect

#10. Can hash values be arrays? Can you have an array of hashes? (give examples)
  #Yes
  # and Yes
  # examples:
    #students_top_three_test_score {a.smith: [98, 97, 89], b.jones: [100, 98, 99]}
    #[{}, {}, {}]

#11. Look at several Rails/Ruby online API sources and say which one you like best and why.


#12. Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.
puts "\nexercise #12"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
puts contacts.inspect

# 13. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?
puts "\nexercise #13"
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

#14. In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

#Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
#As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.
fields = [:email, :address, :phone]
contacts["Joe Smith"] = Hash[fields.zip(contact_data)]
puts contacts.inspect

#15. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
#Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".

arr.delete_if {|word| word.start_with?("s")}
puts arr.inspect

#16. Take the following array:
puts "\nexercise #16"

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
#and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
b = []
a.each do |string|
  b << string.split(" ")
end
b.flatten!
puts b.inspect

#17. What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
 #"These hashes are the same!"
 #hashes are not order dependent 
