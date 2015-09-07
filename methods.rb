#methods exercises

#1. Write a program that contains a method called greeting that takes a name as its parameter. It then prints a greeting message with the name included in it.

def greeting(name)
  puts "Hello, #{name}."
end

#2. What do the following expressions evaluate to?
  #1. in irb => 2   but executed in a program, nothing
  #2. prints '2' but all puts return nil
  #3. p prints and returns - in this case the string "Joe"
  #4. return value of string "four"
  #5. prints string; retruns nil

#3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.
def multiply(a, b)
  a * b
end

#4 What will the following code print to the screen?
#"Yippeee!!!" is the return value but it will not print to the screen

#5  1) Edit the method in exercise #4 so that it does print words on the screen. 2) What does it return now?
def scream(words)
  words = words + "!!!!"
  puts words
end

scream("huzzah")

#6. What does the following error message tell you?
# a method has been called that has two parameters but only one arguemnt entered at method call
