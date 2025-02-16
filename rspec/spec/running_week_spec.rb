require 'rspec'
require 'run'
require 'running_week'

RSpec.describe 'RunningWeek' do

  let(:monday_run) do
    Run.new(:duration => 32,
      :distance => 5,
      :timestamp => "2025-02-11 20:32")

  end

  let(:wednesday_run) do
    Run.new(:duration => 45,
            :distance => 6,
            :timestamp => "2025-02-13 20:15")
  end

  let(:runs) { [ monday_run, wednesday_run] }

  let(:running_week) { RunningWeek.new(Date.parse("2025-02-11"), runs) }

  describe '#runs' do

    it 'returns all runs in a week' do
      expect(running_week.runs).to eq(runs)
    end
  end

  describe '#first_run' do
    it 'returns the first run of the week' do
      expect(running_week.first_run).to eq(monday_run)
    end
  end

  describe '#average_distance' do
    it 'returns the average distance of all the runs in the week' do
      expect(running_week.average_distance).to be_within(0.1).of(5.5)
    end
  end

end
