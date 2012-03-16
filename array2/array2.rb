class Array2
  attr_reader :elements

  def initialize(*elements)
    @elements = elements
  end

  def Array2.[](*elements)
    new(*elements)
  end

  def ==(other_object)
    return false unless other_object.instance_of? Array2
    elements == other_object.elements
  end

  def length
    @elements.length
  end

  def at(index)
    @elements.at(index)
  end

  def insert(index, object)
    @elements.insert(index, object)
    self
  end

  def delete_at(index)
    @elements.delete_at(index)
  end

end
