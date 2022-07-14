require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  # rubocop:disable Style/ExplicitBlockArgument
  def each
    @list.each { |item| yield item }
  end

  # rubocop:enable Style/ExplicitBlockArgument
end

list = MyList.new(1, 2, 3, 4)
list.all? { |e| e < 5 }
list.any? { |e| e == 2 }
list.all? { |e| e > 5 }
list.any? { |e| e == 5 }
list.filter(&:even?)
