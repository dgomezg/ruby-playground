class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    @numbers.map { |number| expand_into_multiples(number, limit)  }
            .flatten
            .uniq
            .sum
  end

  private
  def expand_into_multiples(root, up_to)
    result = []
    next_multiple = root
    while root > 0 && next_multiple < up_to
      result << next_multiple
      next_multiple += root
    end
    result
  end

end