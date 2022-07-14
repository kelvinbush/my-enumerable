module MyEnumerable
  def all?
    each { |element| return false unless block.call(element) }
  end

  def any?
    each { |element| return true if block.call(element) }
  end

  def filter
    arr = []
    each { |element| arr.push(element) if block.call(element) }
    arr
  end
end