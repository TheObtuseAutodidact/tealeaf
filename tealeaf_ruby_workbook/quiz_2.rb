#quiz_2

#1. n this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#see if there is an age present for "Spot".
#Bonus:
#What are two other hash methods that would work just as well for this solution?
puts ages.has_key?("Spot")
puts ages.include?("Spot")
puts ages.select {|k, v| k == "Spot"}

#2. Add up all of the ages from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total = 0
ages.each {|k, v| total += v}
puts total
puts ages.values.inject(:+)

#3 In the age hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#throw out the really old people (age 100 or older).
ages.reject! {|k, v| v >= 100}
puts ages.inspect

#4 Starting with this string:

munsters_description = "The Munsters are creepy in a good way."
#Convert the string in the following ways (code will be executed on original munsters_description above):

# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

#puts munsters_description.capitalize!
#puts munsters_description.swapcase!
#puts munsters_description.downcase!
#puts munsters_description.upcase!

#5. We have most of the Munster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
#add ages for Marilyn and Spot to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
puts ages.inspect

#6. Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

puts ages.min

#7. See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."
if /Dino/ =~ advice
  puts true
else
  puts false
end

#or
puts advice.match("Dino")

#8. In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
#Find the index of the first name that starts with "Be"
flintstones.each_with_index do |name, index|
  if name.match("Be")
    puts index
  end
end

#9. Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

fli = flintstones.map do |name|
  name.slice(0..2)
end
puts fli.inspect

#10 Using array#map!, shorten each of these names to just 3 characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map!{|name| name[0, 3]}
puts flintstones.inspect
