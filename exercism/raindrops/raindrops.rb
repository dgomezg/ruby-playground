module Raindrops
  def self.convert(num)
    result = ''
    result += 'Pling' if (num % 3).zero?
    result += 'Plang' if (num % 5).zero?
    result += 'Plong' if (num % 7).zero?
    result.length > 0? result : num.to_s
  end
end