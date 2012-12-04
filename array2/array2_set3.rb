class Array2

  def join(separator='')
    result = ''
    for i in 0...(length - 1)
      result << at(i).to_s
      result << separator
    end
    result << at(-1).to_s
    result
  end

  def first(n=1)
    raise 'negative array size' if n < 0
    return at(0) if n == 1
    i, first_n = 0, Array2.new
    while n > i and length > i
      first_n.insert i, at(i)
      i += 1
    end
    first_n
  end

  def last(n=1)
    last_n = reverse.first(n)
    return last_n if n < 2
    last_n.reverse
  end

end
