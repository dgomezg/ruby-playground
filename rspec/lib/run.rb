# frozen_string_literal: true
require 'date'

class Run
  @@logged_runs = Array.new

  attr_reader :duration, :distance, :timestamp

  def initialize(duration:, distance:, timestamp:)
    @duration = duration
    @distance = distance
    @timestamp = DateTime.strptime(timestamp, "%Y-%m-%d %H:%M")
  end

  def self.log(duration:, distance:, timestamp:)
    @@logged_runs << Run.new(duration: duration, distance: distance, timestamp: timestamp)
  end

  def self.count(week = nil)
    if (week.nil?)
      @@logged_runs.length
    else
      week_date = DateTime.strptime(week, "%Y-%m-%d")
      @@logged_runs
        .select{|run| run.timestamp.between?(week_date, week_date + 6) }
        .length
      end
  end

end
