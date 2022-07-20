# file_name in lower_snake_case
# ClassName in UpperCamelCase

class Car
  attr_reader :brand, :engine_started
  attr_accessor :color

  def initialize(color, brand) #constructor method
    @engine_started = false
    @color = color
    @brand = brand
  end

  # def engine_started?
  #   return @engine_started
  # end

  def start_engine
    spark_plugs_ignite
    fuel_pump_pumps
    @engine_started = true
    puts "engine successfully started"
  end


  # def color
  #   return @color
  # end

  def color=(new_color)
    @color = new_color
  end

  # def brand
  #   return @brand
  # end

  private 
  
  def spark_plugs_ignite
    puts "spark plugs are igniting vrinnnn"
  end

  def fuel_pump_pumps
    puts "fuel pump is pumping blubbb"
  end

end