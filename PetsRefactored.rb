class Pet
 
	def set_name=(name)
		@name = name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
end
 
class Ferret < Pet
 
	def squeal
		return "squeeeeee"
	end
 
end
 
class Chincilla < Pet
 
	def roar
		return "eeeep"
	end
 
end
 
class Parrot < Pet
 
	def tweet
		return "chirp"
	end
 
end