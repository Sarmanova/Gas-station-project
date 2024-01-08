require "pry"
class Vehicle
  attr_accessor :fuel_type, :fuel_capacity, :current_fuel
  def initialize(fuel_type, fuel_capacity)
    @fuel_type = fuel_type
    @fuel_capacity = fuel_capacity
    @current_fuel = 0
  end
  def refuel(amount)
    if (current_fuel + amount) <= @fuel_capacity
      @current_fuel += amount
      puts " Total amount #{amount} of fuel #{fuel_type}"
    else 
      puts "Your fuel is full, can not add more fuels."
  end
end

 
end

 new_vehicle = Vehicle.new("Regular", 60)
 new_vehicle.refuel(61)
 puts "Done"

class FuelPump
  attr_accessor  :fuel_type, :fuel_level, :max_capacity
  def initialize(fuel_type, max_capacity)
    @fuel_type = fuel_type
    @fuel_level = 0
    @max_capacity = 60
  end
  # def refill
    
  def refill vehicle_fuel_amount
    if vehicle_fuel_amount <= @max_capacity
       @fuel_level += vehicle_fuel_amount
      puts "Refilling amount: #{vehicle_fuel_amount}" 
      else
      puts "Refill is done!"

    end   
  end
 
  
  def seleclt_fuel_type type
    #puts "Please select the following fuel types: 94-Premuim, 89(Mid-grade), 87(Regular)"
    if type.to_i === @fuel_type
      @fuel_type << type
      puts "#{type} type is selected"
      
    elsif type.to_i === @fuel_type
      @fuel_type << type
      puts "#{type}is selected"

    else
      puts "#{type} type is selected "

    end
    
  end
end

fuel_pupms = FuelPump.new("Regular",60)
fuel_pupms.refill(61)
puts "Please select the following fuel types: 
        94 Premuim 
        89 Mid-grade 
        87 Regular"
user_input_type = gets.chomp.to_i
fuel_pupms.seleclt_fuel_type(user_input_type)

class GasStation
  attr_accessor :name, :location, :pumps
  def initialize(name, location) 
    @name = name
    @location = location
    @pumps = []
    
  end
   def add_vechicles(car)
     @pumps << Vehicle.new("Regular", 60)
     puts @pumps.inspect
   end
 

end

gas_station = GasStation.new("Toyota","Leander.TX")
gas_station.add_vechicles(fuel_pupms)
