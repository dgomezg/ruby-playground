module Pangram

  def self.pangram?(phrase)
    phrase.downcase.gsub(/[^a-z]/, '').chars.uniq.sort === ('a'..'z').to_a
  end
end