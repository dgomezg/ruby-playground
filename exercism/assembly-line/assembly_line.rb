class AssemblyLine
  CARS_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
    @sucess_rate = case speed
                   when 1..4  then 1
                   when 5..8  then 0.9
                   when 9     then 0.8
                   when 10    then 0.77
                   else 0
                   end
  end

  def production_rate_per_hour
    @speed * CARS_PER_HOUR * @sucess_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
