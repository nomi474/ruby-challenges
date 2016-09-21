class Cat
	#attr_writer :name,:owner, :meow
	#attr_reader :name,:owner, :meow
	attr_accessor :name,:owner, :meow
   	
	@@total_cats = 0
	
	def initialize
		@@total_cats += 1
	end
	
	def Cat.current_count
		puts "There are currently #{@@total_cats} instances of my Cat class"
	end
	
	def self.current_count
		puts "There are currently #{@@total_cats} instances of my Cat class"
	end
	
end # end class

my_cat = Cat.new
my_cat.name = "Kitty"
catname = my_cat.name

my_cat.owner = "Nomi"
ownername = my_cat.owner

my_cat.meow = "meeeeoooowww"

puts "#{ownername} has a cat named #{catname}. #{catname} says #{my_cat.meow}"

my_new_cat = Cat.new
my_new_cat.owner = "Aafiya"
puts "The new cat's owner is #{my_new_cat.owner}"

Cat.current_count
puts Cat.inspect
puts my_cat.inspect
puts my_new_cat.inspect
