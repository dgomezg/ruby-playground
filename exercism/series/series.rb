class Series
  def initialize(string)
    raise ArgumentError if string.empty?
    @string = string.chars
  end

  def slices(length)
    raise ArgumentError unless
      length.integer? && length.between?(1,@string.length)

    @string[0..-length].map.each_with_index do |_, i|
      @string[i..(i + length -1)].join
    end
  end
end
