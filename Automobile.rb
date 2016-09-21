class Automobile
    
    def set_model=(model_name)
        @model = model_name
    end
    def get_model
        return @model
    end
    
    def set_color=(vehicle_color)
        @color = vehicle_color
    end
    def get_color
        return @color
    end
    
    def set_make=(car_company)
        @company = car_company
    end
    
    def get_make
        return @company
    end
    
    def set_year=(model_year)
        @year = model_year
    end
    
    def get_year
        return @year
    end
    
    
    def set_vin=(vin_number)
        @vin = vin_number
    end
    
    def get_vin
        return @vin
    end
        
    #automatic or manual
    def set_transmission_type=(transmission_type)
        @transmission = transmission_type
    end
    
    def get_transmission_type
        return @transmission
    end
end  

class Car < Automobile
    #sedan, SUV, light truck, hatchback etc.
    def set_vehicle_type=(body_type)
        @vehicle_type = body_type
    end
    
    def get_vehicle_type
        return @vehicle_type
    end
    
    def set_number_of_doors=(num_of_doors)
        @doors_num = num_of_doors
    end
    
    def get_number_of_doors
        return @doors_num
    end
end

class Truck < Automobile
    def set_total_number_of_wheels=(num_of_wheels)
        @wheels_num = num_of_wheels
    end
    
    def get_total_number_of_wheels
        return @wheels_num
    end
end

class Bus < Automobile
    
    def set_business_purpose=(purpose_of_use)
        @business_purpose = purpose_of_use
    end
    
    def get_business_purpose
        return @business_purpose
    end
    
end

class Motorcycle < Automobile
    def set_horse_power=(horse_power)
        @motor_power = horse_power
    end

    def get_horse_power
        return @motor_power
    end    
end
begin
my_car = Car.new
my_car.set_make = "Toyota"
my_car.set_model= "Yaris"
my_car.set_year = 2015
my_car.set_color = "Navy blue"
my_car.set_vehicle_type = "hatchback"
my_car.set_number_of_doors= 5

puts "I recently bought a  #{my_car.get_year} #{my_car.get_make} #{my_car.get_model}.
It's #{my_car.get_color} in color.
You can say that it has #{my_car.get_number_of_doors} doors, since it's a #{my_car.get_vehicle_type}"

my_truck = Truck.new
my_truck.set_total_number_of_wheels=18
my_truck.set_year = 2005
my_truck.set_transmission_type = "automatic"
puts "I recently bought a big #{my_truck.get_total_number_of_wheels} wheeler truck. It helps me to transport goods from the sea port to the warehouse.
Although it's model year is #{my_truck.get_year}, yet it's still in pretty good condition and runs great. Plus the #{my_truck.get_transmission_type} transmission
makes it easy to drive."

my_bus = Bus.new
my_bus.set_business_purpose="school"
my_bus.set_color="yellow"
puts "My #{my_bus.get_business_purpose} bus is #{my_bus.get_color} in color and it has big wheels that go round and round.
I love riding the bus with all my friends."

my_motorcycle = Motorcycle.new
my_motorcycle.set_horse_power= "100 cc"
my_motorcycle.set_make = "Kawasaki"
puts "I hate the trafiic on LA freeways! So, I bought myself a #{my_motorcycle.get_horse_power} #{my_motorcycle.get_make} motorcycle. So, I can travel faster during rush hours."
end
