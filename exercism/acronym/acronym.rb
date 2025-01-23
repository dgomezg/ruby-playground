module Acronym
  def self.abbreviate(phrase)
    phrase.scan(/\w+/).map{ |word| word[0].upcase}.join
  end
end