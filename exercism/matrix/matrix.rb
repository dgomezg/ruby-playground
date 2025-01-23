class Matrix

  def initialize(input)
    @matrix = []
    input.split("\n").each do |row|
      @matrix.push( row.split(' ').map(&:to_i))
    end
  end

  def row(index)
    @matrix[index-1]
  end

  def column(index)
    # Which option is better?
    #@matrix.map { |row| row[index-1] }
    @matrix.transpose[index-1]
  end
end