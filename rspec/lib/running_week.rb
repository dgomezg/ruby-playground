# frozen_string_literal: true
require 'date'
class RunningWeek

  attr_reader :runs
  def initialize(week, runs)
    raise ArgumentError, 'Day is not Monday' unless week.wday == 1
    @week = week
    @runs = runs
  end

  def first_run
    runs.first
  end

  def average_distance
    runs.map(&:distance).sum.to_f / runs.size
  end

end
