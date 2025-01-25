module Luhn
  def self.valid?(number)
    if !number.scan(/[^\d\s]/).empty?
      return false
    end
    numbers = number.scan(/\d/).reverse.map(&:to_i)
    if numbers.size > 1
      numbers.map.with_index do |n, index|
        index.even? ? n : n * 2 > 9 ? (n * 2) - 9: n * 2
      end.sum % 10 == 0
    else
      false
    end
  end
end