class Squares
  def initialize(up_to)
    @up_to = up_to
  end
  def square_of_sum
    (1..@up_to).reduce(:+)**2
  end

  def sum_of_squares
    (1..@up_to).map{|n | n**2}.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end