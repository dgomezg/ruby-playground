module ResistorColorDuo
  RESISTOR_COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"].freeze

  def self.value(colors)
    colors.map{|color| RESISTOR_COLORS.index(color).to_s}[0..1].join.to_i
  end

end