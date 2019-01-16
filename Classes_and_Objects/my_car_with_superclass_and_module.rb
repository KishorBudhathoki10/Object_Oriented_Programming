module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color, :year, :model

  @@number_of_vehicles = 0

  def initialize(y, c, m)
    self.year = y
    self.color = c
    self.model = m
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.gas_mileage(gallons, miles)
    "#{miles / gallons} miles per gallon of gas."
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
    "This Vehicle model is #{model} has #{color} color and is from year #{year}."
  end

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def age
    "This Vehicle with model #{self.model} is #{self.years_old} years old."
  end

  protected

  def years_old
    Time.new.year - self.year
  end

end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  include Towable
  NUMBER_OF_DOORS = 2
end

ferrari = MyCar.new(1994, "Yellow", "Ferrari X")
puts ferrari.age