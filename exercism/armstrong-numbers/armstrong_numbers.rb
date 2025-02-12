module ArmstrongNumbers
  def self.include?(number)
    digits = number.to_s.chars.map(&:to_i)
    digits.map{ |d| d**digits.size }.sum == number
  end
end
