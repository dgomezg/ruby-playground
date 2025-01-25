class Clock
  attr_reader :hour, :minute
  def initialize(hour: 0, minute: 0)
    @hour = (hour + (minute / 60)) % 24
    @minute = minute % 60
  end

  def to_s
    "%02d:%02d" % [@hour, @minute]
  end

  def +(other)
    raise ArgumentError unless other.is_a?(Clock)

    total_minutes = @minute + (other.hour * 60) + other.minute
    @hour =  (hour + total_minutes / 60) % 24
    @minute = total_minutes % 60

    self
  end

  def -(other)
    raise ArgumentError unless other.is_a?(Clock)

    minutes = (@hour * 60 + @minute) - (other.hour*60 + other.minute)
    @hour = (minutes / 60) % 24
    @minute = minutes % 60

    self
  end

  def ==(other)
    raise ArgumentError unless other.is_a?(Clock)
    @hour == other.hour && @minute == other.minute
  end
end