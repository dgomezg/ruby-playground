class Phrase
  def initialize(source)
    @source = source
  end

  def word_count
    @source.scan(/\b[\w']+\b/).each_with_object(Hash.new(0)) do |word, hash|
      hash[word.downcase] += 1
    end
  end
end