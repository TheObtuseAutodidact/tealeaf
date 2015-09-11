# hashes.rb

#1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.
  family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
  immediate_family = family.select {|fam| fam == :sisters || fam == :brothers}
  puts immediate_family.inspect

  #2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
  hash1 = {a: "apple", b: "banana", c: "cherry"}
  hash2 = {d: "dougnut", e: "eclair", f: "fudge"}

  captured_hash = hash1.merge(hash2)
  puts "\nHere we call the hash1.merge(hash2)"
  puts "This returns a new hash which we capture in a variable and return as 'captured_hash'"
  puts "captured_hash:"
  puts captured_hash
  puts "\nand here we see that hash1 and hash2 are uneffect by the method\n"
  puts puts "hash1:"
  puts hash1
  puts "hash2:"
  puts hash2
  puts "\n\n"
  hash1.merge!(hash2)
  puts "Here we see that after .merge!() hash1 is mutated"
  puts hash1

  #3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

    ex_three = {one: 1, two: 2, three: 3, four: 4}

    puts ex_three.keys
    puts ex_three.values
    ex_three.each {|k, v| puts "#{k} => #{v}"}

#4. Given the following expression, how would you access the name of the person?
  person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

  person[:name]

#5 What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.
  # .has_value?()  returns true/false

  puts person.has_value?('web developer')

#6.  Given the array...

  words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
            'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
            'flow', 'neon']
  #Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:
  my_hash = {}
  words.each do |word|
    key = word.split('').sort.join
    if my_hash.has_key?(key)
      my_hash[key].push(word)
    else
      my_hash[key] = [word]
    end
  end
  puts my_hash.inspect

#7. Given the following code...

  x = "hi there"
  my_hash = {x: "some value"}
  #my_hash2 = {x => "some value"}
#  What's the difference between the two hashes that were created?
  # in my_hash, x: is a symbol-- this works fine
  # in my_hash2 x is an unassigned variable -- this throughs an error

#8. If you see this error, what do you suspect is the most likely problem?

  # NoMethodError: undefined method `keys' for Array
  # B. There is no method called keys for Array objects.
