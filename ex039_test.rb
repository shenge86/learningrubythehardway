require './dict.rb'

jazz = Dict.new()
Dict.set(jazz, 'Miles Davis', 'Flamenco Sketches')
# confirms set will replace previous one
Dict.set(jazz, 'Miles Davis', 'Kind of Blues')
Dict.set(jazz, 'Duke Ellington', 'Beginning To See The Light')
Dict.set(jazz, 'Billy Strayhorn', 'Lush Life')

puts "---- List Test ----"
Dict.list(jazz)

puts "---- Get Test ----"
puts Dict.get(jazz, 'Miles Davis')
puts Dict.get(jazz, 'Duke Ellington')
puts Dict.get(jazz, 'Billy Strayhorn')

puts "---- Delete Test ----"
puts "** Goodbye Miles"
Dict.delete(jazz, "Miles Davis")
Dict.list(jazz)

puts "** Goodbye Duke"
Dict.delete(jazz, "Duke Ellington")
Dict.list(jazz)

puts "** Goodbye Billy"
Dict.delete(jazz, "Billy Strayhorn")
Dict.list(jazz)

puts "** Test Delete of Missing Key"
Dict.delete(jazz, "Charles Mingus")

puts "Hit Enter to Exit."
gets














