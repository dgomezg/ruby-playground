module Isogram
  def self.isogram?(string)
    string.gsub(/[^0-9A-Za-z]/, '')
          .downcase
          .chars
          .group_by{|e| e}
          .all?{|_, v| v.length == 1}
  end
end