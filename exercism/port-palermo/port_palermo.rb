module Port
  # DONE: define the 'IDENTIFIER' constant
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    case ship_identifier.to_s[0...3].upcase.to_sym
    when :OIL, :GAS then :A
    else :B
    end
  end
end
