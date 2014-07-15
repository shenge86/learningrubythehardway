# STDOUT is a global constant which is the actual standard output stream for the program. flush flushes any buffered data within io to the underlying operating system (note that this is Ruby internal buffering only; the OS may buffer the data as well). The usage is not mandatory but recommended. Note: STDOUT.sync = true will allow you to have flushed Ruby based IO without repeated .flush calls.

# gets accepts a single line of data from the standard input - the keyboard in this case - and assigns the string typed by the user to city. The standard input is a default stream supplied by many operating systems that relates to the standard way to accept input from the user. In our case, the standard input is the keyboard.

# chomp is a string method and gets retrieves only strings from your keyboard. You must have realised that gets returns a string and a '\n' character, while chomp removes this '\n'.


STDOUT.sync = true

puts "How old are you? "
# STDOUT.flush
age = gets.chomp()

puts "How tall are you? "
# STDOUT.flush
height = gets.chomp()

puts "How much do you weigh? "
# STDOUT.flush
weight = gets.chomp()

puts "So, you're #{age} years old, #{height} tall and #{weight} heavy."