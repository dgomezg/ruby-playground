class Series
  def initialize(string)
    raise ArgumentError if string.empty?
    @string = string.chars
  end

  def slices(length)
    raise ArgumentError unless
      length.integer? && length.between?(1,@string.length)

    #Improved after checking community solutions
    #@string[0..-length].map.each_with_index do |_, i|
    #  @string[i..(i + length -1)].join
    #end
    @string.each_cons(length).map(&:join).to_a

  end
end
