class Butler

  def initialize(castle)
    @castle = castle # We want @castle to store an instance of Castle.
  end

  def clean_castle
    puts "#{@castle.name} is cleaned!"
  end


end