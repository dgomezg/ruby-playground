class SpiralMatrix
  attr_reader :matrix

  def initialize(matrix_size)
    @matrix = Array.new(matrix_size) { Array.new(matrix_size, 0) }
    count = 1
    row = column = 0
    directions = [:right, :down, :left, :up]
    while count <= matrix_size ** 2
      @matrix[row][column] = count

      #check if we need to change direction
      if (directions[0] == :right && (column +1 == matrix_size || @matrix[row][column+1] != 0)) ||
         (directions[0] == :down  && (row +1 == matrix_size || @matrix[row+1][column] != 0)) ||
         (directions[0] == :left  && (column == 0 || @matrix[row][column -1] != 0)) ||
         (directions[0] == :up    && (row == 0 || @matrix[row-1][column] != 0))
        directions.rotate!(1)
      end

      case directions[0]
        when :right then column += 1
        when :down  then row += 1
        when :left  then column -= 1
        when :up    then row -= 1
      end

      count += 1
    end
  end

end