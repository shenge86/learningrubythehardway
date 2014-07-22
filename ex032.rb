# Loops and arrays
the_count = [1, 2, 3, 4, 5, 6, 7, 8]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# first kind of for-loop in more traditional style found in other languages
# for number in the_count
the_count.each do |number|
	puts "This is count #{number}"
end

# same as above but more Ruby style
fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

# same style but a different syntax
change.each {|i| puts "I got #{i}" }

# we can build lists, first start with an empty one
elements = []

# then use range operator to do 0 to 5 counts
(0..5).each do |i|
	puts "adding #{i} to the list."
	# pushes the i variable on the *end* of the list
	# elements.push(i)
	elements << i
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}" }