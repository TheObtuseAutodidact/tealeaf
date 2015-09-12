#more_stuff.rb

#1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word. - "laboratory" - "experiment" - "Pans Labyrinth" - "elaborate" - "polar bear"


# def lab_check(string)
#   my_array = string.split("")
#   #puts my_array.inspect
#   unless my_array.include?("l") || my_array.include?("L")
#     false
#   else
#     if my_array.include?("l")
#       l_index = my_array.index("l")
#       else
#         l_index = my_array.index("L")
#       end
#     if my_array[l_index + 1] == 'a' && my_array[l_index + 2] == 'b'
#       puts string
#     end
#   end
# end

def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end

# lab_check("laboratory")
# lab_check("experiment")
# lab_check("Pans Labyrinth")
# lab_check("elaborate")
# lab_check("polar bear")

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")

#2. What will the following program print to the screen? What will it return?

def execute(&block)
  block#.call
end

execute { puts "Hello from inside the execute method!" }
 # Nothing the block inside the method need .call attached

#3. What is exception handling and what problem does it solve?
  #Exception handling forces errors into predictable/prescribe behavior

#4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute {puts "Hello from inside the execute method!"}

#5. Why does the following code...
#
# def execute(block)
#   block.call
# end
#
# execute { puts "Hello from inside the execute method!" }
 # we are missing the & before the block
 # this means execute expects an argument instead of a block
