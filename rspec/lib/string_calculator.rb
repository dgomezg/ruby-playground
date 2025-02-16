# frozen_string_literal: true

class StringCalculator

  def self.add(input)
    if input.empty?
      0
    else
      numbers = input.split(',').map(&:to_i)
      numbers.inject(0) {|sum, number| sum + number}
      #numbers.reduce(:+)
    end
  end
end
