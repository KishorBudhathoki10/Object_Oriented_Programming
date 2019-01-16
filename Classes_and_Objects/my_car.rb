class MyCar

   attr_accessor :color
   attr_reader :year

   def self.gas_mileage(gallons, miles)
      "#{miles / gallons} miles per gallon of gas."
   end

   def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
   end

   def speed_up(number)
      @current_speed += number
      "You push the gas and accelerate #{@current_speed} mph."
   end

   def brake(number)
      @current_speed -= number
      "You push the brake and decelerate #{number} mph."
   end

   def current_speed
      "You are now going #{@current_speed} mph."
   end

   def shut_down_car
      @current_speed = 0
      "Lets park this bad boy."
   end

   def to_s
    "This car model is #{@model} has #{color} color and is from year #{year}."
  end
  
end

ferrari = MyCar.new(1997, 'white', 'ferrari max')
puts ferrari.current_speed
puts ferrari.speed_up(20)
puts ferrari.current_speed
puts ferrari.speed_up(100)
puts ferrari.current_speed
puts ferrari.brake(120)
puts ferrari.current_speed
puts ferrari.shut_down_car
puts ferrari.speed_up(40)
MyCar.gas_mileage(13, 351)
puts ferrari.to_s

