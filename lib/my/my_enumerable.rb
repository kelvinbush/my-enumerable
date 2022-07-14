module MyEnumerable
  def all?(&block)
    each do |element|
      return false unless block.call(element)
    end
    true
  end

  def any?(&block)
    each do |element|
      return true if block.call(element)
    end
    false
  end

  def filter(&block)
    arr = []
    each { |element| arr.push(element) if block.call(element) }
    arr
  end
end
