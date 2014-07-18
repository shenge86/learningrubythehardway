filename = ARGV.first
script = $0
STDOUT.sync = true


openmsg = <<MY_HEREDOC
Simple Text Editor by Shen Ge
Copyright 2014
******************************
#{filename} will be replaced
If you don't want that, hit CTRL-C (^C).
If you do want that, hit RETURN.
MY_HEREDOC
puts openmsg

prompt = ">> "
print prompt
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')
puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

target.write("#{line1}\n#{line2}\n#{line3}\n")
# target.write(line1)
target.close()

target = File.open(filename, 'r')
puts "Your current file #{filename} now reads: "
puts target.read()
target.close()