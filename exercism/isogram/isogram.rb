module Isogram
  def self.isogram?(string)
    #string.gsub(/[^0-9A-Za-z]/, '')
    #      .downcase
    #      .chars
    #      .group_by{|e| e}
    #      .all?{|_, v| v.length == 1}

    #Alternative solution after checking community solutions
    letters = string.downcase.scan(/\w/)
    letters.count === letters.uniq.count
  end
end