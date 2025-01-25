class Scrabble
  attr_reader :score
  def initialize(word)
    @score = word.upcase.scan(/\w/).map do |char|
      char_score(char)
    end.sum
  end

  private def char_score(char)
  case char
  when *%w(A E I O U L N R S T) then 1
  when *%w(D G) then 2
  when *%w(B C M P) then 3
  when *%w(F H V W Y) then 4
  when *%w(K) then 5
  when *%w(J X) then 8
  when *%w(Q Z) then 10
  else 0
  end

  end
end