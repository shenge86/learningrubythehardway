class RoomEnvironment
	attr_accessor :goldpieces
	
	def initialize(goldpieces = 10)
		@goldpieces = goldpieces
	end

	def a_room
		puts "You are in a dark room."
		puts "There's a door to your right and left."
		puts "Which one do you take?"
		
		print "> "
		choice = $stdin.gets.chomp
		
		if choice == "left"
			bear_room
		elsif choice == "right"
			cthulhu_room
		else
			dead("You stumble around the room until you starve.")
		end
	end

	def bear_room
		puts "There is a fat bear with a bunch of honey in front of a door."
		puts "Do you want to take honey or taunt bear?"
		bear_moved = false
		
		while true
			print "> "
			choice = $stdin.gets.chomp
			
			if choice.include? "honey"
				dead("The bear slaps your face off.")
			elsif choice.include? "taunt" and not bear_moved
				puts "Bear moved from the door."
				puts "You can now open door."
				bear_moved = true
			elsif choice.include? "taunt" and bear_moved
				dead("Bear gets pissed off and chews your legs off.")
			elsif choice.include? "open" and not bear_moved
				dead("You try to run past the bear but the bear is too fast and slaps you.")
			elsif choice.include? "open" and bear_moved
				gold_room		
			else
				wait
			end
		end

	end

	def cthulhu_room
		puts "Here you see the great evil Cthulhu."
		puts "He, it, whatever stares at you and you go insane."
		puts "Do you flee for your life or eat your head?"
		
		print "> "
		choice = $stdin.gets.chomp
		
		if choice.include? "flee"
			if goldpieces > 10
				puts "You are carrying too much gold to run!"
				dead("Cthulhu grabs you and takes your head off.")
			else
				puts "You manage to run away."
				a_room
			end
		elsif choice.include? "head"
			dead("Well that was tasty!")
		else
			wait
			cthulhu_room
		end
	end

	def gold_room
		puts "This room is full of gold. How much do you take?"
		
		print "> "
		choice = $stdin.gets.chomp	
		how_much = choice.to_i
		while how_much == 0
			puts "Man, learn to type a number."
			
			print "> "
			choice = $stdin.gets.chomp	
			how_much = choice.to_i		
		end
		
		if how_much < 50		
			puts "You took #{how_much} pieces of gold."
			save_progress(how_much)
			win("Nice, you're not greedy.")		
		else
			puts "The gold falls down on top of you."
			dead("You greedy bastard!")
		end
	end

end

### Special Character Conditions ###

def dead(why)
	puts why, "You're dead!"
	puts "GAME OVER"
	puts "Hit Enter to Exit."
	gets
	exit(0)
end

def wait
	puts "You fidget around nervously waiting to make up your mind."
end

def win(why)
	puts why, "You win!"
	puts "GAME OVER"
	puts "Hit Enter to Exit."
	gets
	exit(0)
end

### Special Methods ###
# class FileEnv
	# # @@f = 'goldamount.txt'
	
	# def open_goldfile		
		# # @target = File.open(@f, 'r')
			
		# # @goldpieces = @target.read()
		# # @target.close()
		
		# # @@goldpieces = @@f.gets.chomp
		
		# # return @@goldpieces
		
		# self.class.f = "goldamount.txt"			
	# end
# end

def open_goldfile
	@f = 'goldamount.txt'
	@target = File.open(@f, 'r')
	@goldpieces = @target.read()
	@target.close()
	return @goldpieces
end


def save_progress(how_much)
	open_goldfile
	
	target = File.open(filename, 'w')
	target.write("#{how_much}")
	target.close()	
	
	puts "This time you acquired: "
	target = File.open(filename, 'r')
	puts target.read()
	target.close()
end

def start
	puts "Shen's Adventure "
	print "Get Ready"
	$stdout.sync = true

	10.times do
		putc('.')
		sleep(1.0/10.0)
	end	
	puts "*" * 15
			
	# Read gold pieces from text data file
	goldpieces = open_goldfile
		
	# Define environment objects
	Rooms = RoomEnvironment.new(goldpieces)
	
	puts "You cannot run with more than 10 pieces of gold."
	puts "You currently have  #{goldpieces} pieces of gold."
	
	Rooms.a_room
end

start