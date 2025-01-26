module TwelveDays
  TRUE_LOVE = [
          ["first", "a", "Partridge in a Pear Tree"],
          ["second", "two", "Turtle Doves"],
          ["third", "three", "French Hens"],
          ["fourth", "four", "Calling Birds"],
          ["fifth", "five", "Gold Rings"],
          ["sixth", "six", "Geese-a-Laying"],
          ["seventh", "seven", "Swans-a-Swimming"],
          ["eighth", "eight", "Maids-a-Milking"],
          ["ninth", "nine", "Ladies Dancing"],
          ["tenth", "ten", "Lords-a-Leaping"],
          ["eleventh", "eleven", "Pipers Piping"],
          ["twelfth", "twelve", "Drummers Drumming"]
  ]
  def self.song
    lyrics = ""
    accumulated = ""
    TRUE_LOVE.each do |month|
      if !lyrics.empty?
        lyrics += "\n"
      end
      this_month = "#{month[1]} #{month[2]}"
      lyrics += "On the #{month[0]} day of Christmas my true love gave to me: #{this_month}#{accumulated}.\n"
      connector = ", "
      if accumulated.empty?
        connector += "and "
      end
      accumulated = "#{connector}#{this_month}#{accumulated}"
    end
    lyrics
  end
end