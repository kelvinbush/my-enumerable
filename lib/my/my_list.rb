require_relative 'my_enumerable'

# My List
class MyList
  # Loads my enumerable methods
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each(&)
    @list.each(&)
  end
end