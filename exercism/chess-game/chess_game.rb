module Chess
  # DONE: define the 'RANKS' constant
  RANKS = 1..8
  # DONE: define the 'FILES' constant
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    RANKS.include? rank and FILES.include? file
  end

  def self.nick_name(first_name, last_name)
    "#{first_name[0..1].upcase}#{last_name[-2..-1].upcase}"
  end

  def self.move_message(first_name, last_name, square)
    if valid_square?(square[1].to_i, square[0])
      "#{nick_name(first_name, last_name)} moved to #{square}"
    else
      "#{nick_name(first_name, last_name)} attempted to move to #{square}, but that is not a valid move"
    end
  end
end
