module Acronym
  def self.abbreviate(phrase)
    #phrase.scan(/\w+/).map{ |word| word[0].upcase}.join
    # Improved after checking community solutions
    phrase.scan(/\b\w/).join.upcase
  end
end