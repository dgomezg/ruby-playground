module ResistorColor
  COLORS = %w(black brown red orange yellow green blue violet grey white)

  def self.color_code(color)
    raise ArgumentError unless ResistorColor::COLORS.include? color
    COLORS.index(color)
  end
end