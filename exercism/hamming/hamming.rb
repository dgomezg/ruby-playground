module Hamming
  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length

    str1.chars.select.each_with_index do |val, idx|
      val != str2[idx]
    end.count
  end
end