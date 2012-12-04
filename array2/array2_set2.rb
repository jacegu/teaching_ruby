class Array2

  def concat(other_array)
    i = length
    for j in 0..(other_array.length - 1)
      insert i, other_array.at(j)
      i += 1
    end
    self
  end

  def drop(n)
    raise 'attempt to drop negative size' if n < 0
    until n == 0
      delete_at 0
      n -= 1
    end
    self
  end

  def compact
    i, compacted = 0, Array2.new
    while i < length
      element = at(i)
      compacted.concat Array2.new(element) unless element.nil?
      i += 1
    end
    compacted
  end

  def uniq
    uniq_array = Array2.new
    for i in 0..(length - 1)
      element = at(i)
      uniq_array.concat Array2.new(element) unless uniq_array.include? element
    end
    uniq_array
  end

  def reverse
    reversed = Array2.new
    i, j = 0, length - 1
    until i == length
      reversed.insert i, at(j)
      i += 1
      j -= 1
    end
    reversed
  end

end
