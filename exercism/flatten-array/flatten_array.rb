module FlattenArray
  def self.flatten(array)
    array.flatten.reject { |element| element.nil? }
  end
end