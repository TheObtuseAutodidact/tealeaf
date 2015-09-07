# 1. Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.
puts "Please enter your name: "
name = gets.chomp.capitalize
puts "Well, hello #{name}!"

#2. Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.
puts "Please enter your age: "
age = gets.chomp.to_i
puts "In ten years you will be #{age + 10} years old."
puts "In twenty years you will be #{age + 20} years old."
puts "In thirty years you will be #{age + 30} years old."
puts "And in fourty years you will be #{age + 40} years old."

#3. Add another section onto name.rb that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. Hint: you can use the times method to do something repeatedly.
10.times {puts name}

#4. Modify name.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.
puts "Enter your first name: "
first_name = gets.chomp.capitalize
puts "Now enter your last name: "
last_name = gets.chomp.capitalize
puts "Welcome #{first_name} #{last_name}"

#5. What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?
  #1. x = 3
  #2. x produces an undefined local variable error

#6. What does the following error message tell you? ...
  # 'shoe' (without quotation marks was used in the program somewhere without being defined in its appropriate scope)
