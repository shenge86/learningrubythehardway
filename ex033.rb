# while loops
numbers = []

def printnums(imax, istep, numbers)
	
	# using while loop
	# i = 0
	# while i < imax
		# puts "At the top i is #{i}"
		# numbers.push(i)
		
		# i += istep
		# puts "Numbers now: ", numbers
		# puts "At the bottom i is #{i}"
	# end
	
	# using for loop
	# (0..imax).each do |i|
	(0..imax).step(istep) do |i|
		puts "At the top i is #{i}"
		numbers.push(i)
		
		puts "Numbers now: ", numbers
		puts "At the bottom i is #{i}"
	end
	
	return numbers
end

puts "Using while loop, "
numbers = printnums(11, 2, numbers)
	
puts "Using for loop, the numbers are "
# remember i can write this 2 other ways?
numbers.each {|num| puts num }