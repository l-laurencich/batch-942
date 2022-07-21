require_relative "building"
require_relative "butler"

class Castle < Building
  attr_accessor :butler

  def initialize(name, width, length, ruler)
    super(name, width, length)
    @ruler = ruler
    @butler = Butler.new(self) # We need to pass the current instance of Castle
  end

  def floor_area
    super + (super/10)  # `super` calls `floor_area` of `Building`
  end

  def has_a_butler?
    @butler != nil
  end

  def ownership_details
    "#{@name} is ruled by #{self.ruler_name}"
  end

  def ruler_name
    @ruler.capitalize
  end

  def self.categories
    return ["Medieval", "Norman", "Ancient"]
  end

end


ludwigs_castle = Castle.new("my magnificent castle", 500, 500, "Ludwig II")

# p ludwigs_castle

# p ludwigs_castle.butler
p ludwigs_castle.ownership_details
# p ludwigs_castle.butler.clean_castle
# p my_castle.name
# p my_castle.length
# puts "************"
# p my_castle.floor_area
# puts "#***********"
# p my_castle.has_a_butler?
# p my_castle.butler
# my_castle.butler=0
# p my_castle.butler
# p my_castle.has_a_butler? #we call instance methods on instances
# # p my_castle.categories -- can't call a class method on an instance
# p Castle.categories # we call class methods on classes


