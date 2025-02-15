module Grains
  def self.square(n)
    raise ArgumentError if n < 1 || n > 64
    result = 1
    count = 1
    while count < n
      result *= 2
      count += 1
    end
    result
  end

  def self.total
    (1..64).map { |n| self.square(n) }
           .reduce(:+)
  end
end