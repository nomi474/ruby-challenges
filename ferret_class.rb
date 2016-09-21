class Ferret
    def set_name=(ferret_name)
        @name = ferret_name
    end
    
    def get_name
        return @name
    end
    
    def set_owner=(owner_name)
        @owner = owner_name
    end
    
    def get_owner
        return @owner
    end
    
    def squeal
        return "squeeeeeeeeeeee"
    end
end
my_ferret = Ferret.new
my_ferret.set_name = "Fredo"
ferretname = my_ferret.get_name
puts "#{ferretname} says #{my_ferret.squeal}"

