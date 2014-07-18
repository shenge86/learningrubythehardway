# require_relative 'ex017input'
# reads in two files
from_file, to_file = ARGV
script = $0
STDOUT.sync = true
puts "Copying from #{from_file} to #{to_file}"

# we could do these two on one line too, how?
input = File.open(from_file)
indata = input.read()

puts "The input file is #{indata.length} bytes long"

puts "Output file exists? #{File.exists? to_file}"

output = File.open(to_file, 'w')
output.write(indata)

puts "Copied!"
output.close()
input.close()