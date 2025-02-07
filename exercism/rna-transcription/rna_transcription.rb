module Complement

  def self.of_dna(dna)
    dna.each_char.map  do |c|
      case c
      when 'G' then 'C'
      when 'C' then 'G'
      when 'T' then 'A'
      when 'A' then 'U'
      else ''
      end
    end.join
  end
end