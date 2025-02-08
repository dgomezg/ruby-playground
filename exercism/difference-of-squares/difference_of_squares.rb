class Squares
  def initialize(up_to)
    @up_to = up_to
  end

  def square_of_sum
    #(1..@up_to).reduce(:+) ** 2
    (1..@up_to).sum ** 2
  end

  def sum_of_squares
    #(1..@upto).map { |n| n ** 2 }.reduce(:+)
    (1..@up_to).sum { |n| n ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end