require_relative "building"

class Skyscraper < Building #smaller than + name of parent class = inheritance
  #  attr_reader :height
  def initialize(name, width, length, height)
    super(name, width, length)
    @height = height
  end

  def type_of_owner #instance method being called on an instance (my_scyscraper in our example)
    if @height > 50
      "this #{self.capitalized_name} is a skyscraper for Spider-Man."
    else
      "this #{capitalized_name} is a skyscraper for beginners"
    end
  end

  def capitalized_name 
    @name.capitalize
  end
end


# my_skyscraper = Skyscraper.new("burj khalifa", 70, 100, 892)
# p my_skyscraper
# p my_skyscraper.name
# p my_skyscraper.length
# p my_skyscraper.floor_area
# p my_skyscraper.type_of_owner
# p my_skyscraper.height
# p my_skyscraper.capitalized_name
