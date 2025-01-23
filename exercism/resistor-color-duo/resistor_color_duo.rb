module ResistorColorDuo
  #RESISTOR_COLORS = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"].freeze
  # Optimization made after seeing community solutions.
  # %w(...) is a shortcut in Ruby to create an array of Strings without having to type quotes and commas...
  RESISTOR_COLORS = %w(black brown red orange yellow green blue violet grey white)

  def self.value(colors)
    #colors.map{|color| RESISTOR_COLORS.index(color).to_s}[0..1].join.to_i
    # Optimization made after seeing community solutions.
    colors.take(2).map{ |color| RESISTOR_COLORS.index(color).to_s}.join.to_i
  end

end