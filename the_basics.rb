#1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.
  puts "Lenny " + "Meyerson"  # puts not returned

 #2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find 1) the thousands number 2) the hundreds 3) the tens and 4) and the ones.
 n = 4321
 puts n / 1000
 puts (n % 1000) / 100
 puts ((n % 1000) % 100) / 10
 puts (((n % 1000) % 100) % 20)

 #3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.
  my_hash = {movie_title1: 2000, movie_title2: 2001, movie_title3: 2002, movie_title4: 2003}
  puts my_hash[:movie_title1]
  puts my_hash[:movie_title2]
  puts my_hash[:movie_title3]
  puts my_hash[:movie_title4]
#  or
  my_hash.each {|k, v| puts v}

# 4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
  my_array = my_hash.collect{|k, v| v}
  puts my_array[0]
  puts my_array[1]
  puts my_array[2]
  puts my_array[3]
  # or

  my_array.each {|year| puts year}

  #5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
  my_range = (5..8).to_a

  my_range.each do |i|
    sub_array = (1..i).to_a   # could use range of (2..i) to save a little time
    puts sub_array.reduce(:*)
  end

  #6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
  def calc_squares(a, b, c)
    a = a.to_f
    b = b.to_f
    c = c.to_f
    puts a**2
    puts b**2
    puts c**2
  end

  calc_squares(2, 5, 7.5)

  #7. What does the following error message tell you?

  # the error message indicated use of a closing paren insted of a closing curly brace
