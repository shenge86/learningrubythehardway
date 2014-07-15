first, second, third = ARGV

puts "The script is called: #{$0}"

STDOUT.sync = true

puts "Put some more information if you like."
info = STDIN.gets.chomp()

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts "You wrote more info here: #{info}"