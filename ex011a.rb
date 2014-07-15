# Program takes in your age and finds the year of birth

STDOUT.sync = true
puts "How old are you?"
age = gets.chomp()

currentyr = Time.now.year
birthyear = currentyr - age.to_i

puts "You were born in #{birthyear}."
puts "You were born in %s." % birthyear
puts "You were born in " + birthyear.to_s + "."
puts "The following will not work since Ruby unlike some other languages do not cast objects to strings when they are operands in String#+ method"
puts "You were born in " + birthyear + "."