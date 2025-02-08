class Triangle

  def initialize(sides)
    raise ArgumentError("wrong number of sides") unless sides.size == 3
    @sides = sides
  end

  def equilateral?
    is_a_triangle? && @sides.uniq.size == 1
  end
  def isosceles?
    is_a_triangle? && @sides.uniq.size <= 2
  end

  def scalene?
    is_a_triangle? && @sides.uniq.size == 3
  end

  private
  def is_a_triangle?
    @sides.reject {|a| a <= 0}.size == 3 &&
      @sides[0] + @sides[1] >= @sides[2] &&
      @sides[1] + @sides[2] >= @sides[0] &&
      @sides[2] + @sides[0] >= @sides[1]
  end

end