class Bicycle  
  attr_reader :gears, :wheels, :seats  
  def initialize(gears = 1)  
    @wheels = 2  
    @seats = 1  
    @gears = gears  
  end  
end  

# class Tandem is a Bicycle
class Tandem < Bicycle  
  def initialize(gears)  
	# When you invoke super with no arguments Ruby sends a message to the parent of the current object, asking it to invoke a method of the same name as the method invoking super.
	# If there is no super, class Tandem will not initialize gears or wheels	
    super  
    @seats = 2  
  end  
end  

t = Tandem.new(2)
puts t.gears  
puts t.wheels  
puts t.seats  

b = Bicycle.new  
puts b.gears  
puts b.wheels  
puts b.seats  