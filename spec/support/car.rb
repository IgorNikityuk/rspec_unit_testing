class Car

	@@object_count = 0

	def initialize
		@wheels_count 		= 4
		@glass_count 			= 6
		@locate_point_x 	= 0
		@locate_point_y 	= 0

		@@object_count += 1
	end
	
	attr_accessor :wheels_count, :glass_count, :locate_point_x, :locate_point_y

	def self.object_count
		@@object_count
	end

	def go x,y
		@locate_point_x += x
		@locate_point_y += y
	end

	def go_to_default
		@locate_point_x = 0
		@locate_point_y = 0
	end

end