
class DndCharacter
  @skills
  @hitpoints
  attr_reader :hitpoints
  def self.modifier(constitution)
    (constitution-10) / 2
  end

  def initialize
    @skills = %i[strength dexterity constitution intelligence wisdom charisma].zip(Array.new(6,0)).to_h
    @skills.keys.each do |skill|
      dices = Array.new(4) {|_| rand(1..6)}
      @skills[skill] = dices.max(3).sum
    end
    @hitpoints = 10 + DndCharacter.modifier(@skills[:constitution])
  end

  private def method_missing(symbol, *args)
    if @skills.keys.include?(symbol)
      @skills[symbol]
    else
      super.send(symbol, *args)
    end
  end
end
