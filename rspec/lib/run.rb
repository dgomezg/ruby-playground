# frozen_string_literal: true
require 'date'

class Run
  attr_reader :duration, :distance, :timestamp
  def initialize(duration:, distance:, timestamp:)
    @duration = duration
    @distance = distance
    @timestamp = DateTime.strptime(timestamp, "%Y-%m-%d %H:%M")
  end

end
