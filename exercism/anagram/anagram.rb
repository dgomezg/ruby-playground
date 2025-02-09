class Anagram

  def initialize(word)
    @word = word.downcase
  end

  def match(words)
    words.select {|word| anagram?(word.downcase)}
  end

  private
  def anagram?(candidate_word)
    candidate_word.length == @word.length &&
      candidate_word.chars.sort == @word.chars.sort &&
      candidate_word != @word
  end
end