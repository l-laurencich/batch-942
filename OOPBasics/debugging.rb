# require "pry-byebug"

def full_name(first, last)
  first_name = first.capitalize
  # binding.pry
  last_name = last.capitalize
  

  name = "#{first_name} #{last_name}"

  return name
end



p full_name("arbi", "velaj")

# binding.pry
p "this is the end of the file"


#gem install pry-byebug
#require "pry-byebug"
#binding.pry as breakpoints in your code
#keywords next for next line, continue for next breakpoint


arr = [1,2,3,4,5]