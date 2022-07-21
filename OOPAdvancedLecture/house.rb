require_relative "building"

class House < Building
  # attr_reader :name, :width, :length

  # def initialize(name, width, length)
  #   @name = name
  #   @width = width
  #   @length = length
  # end

  # def floor_area #instance method
  #   @width * @length
  # end

  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    when "Munich" then "mate it's expensive here"
    else raise Exception.new("No data for #{city}")
    end
  end

end


my_house = House.new("my blue house", 50, 50)
p my_house
p my_house.name
p my_house.length
p my_house.floor_area

# p my_house.has_a_butler?
p House.price_per_square_meter("Paris")