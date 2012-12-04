class Array2

  def empty?
    length == 0
  end

  def include?(element)
    i = 0
    while i < length
      return true if at(i) == element
      i += 1
    end
    false
  end

  def index(object)
    for i in 0..(length - 1)
      return i if at(i) == object
    end
    nil
  end

  def clear
    delete_at(0) until empty?
    self
  end

  def delete(object)
    value = delete_at index(object) while include? object
    value
  end

end
