class Cat
    def set_name=(cat_name)
        @name = cat_name
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
    
    def meow
        return "meeeeeeowwwwww!"
    end    
	
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
my_cat.set_name = "Kitty"
catname = my_cat.get_name

my_cat.set_owner = "Nomi"
ownername = my_cat.get_owner

puts "#{ownername} has a cat named #{catname}. #{catname} says #{my_cat.meow}"

my_new_cat = Cat.new
my_new_cat.set_owner = "Aafiya"
puts "The new cat's owner is #{my_new_cat.get_owner}"

Cat.current_count
puts Cat.inspect
puts my_cat.inspect
puts my_new_cat.inspect
