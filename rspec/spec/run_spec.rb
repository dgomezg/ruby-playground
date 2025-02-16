# frozen_string_literal: true
require 'run'

describe Run do

  describe "attributes" do
    subject do
      Run.new(:duration => 32,
              :distance => 5.2,
              :timestamp => "2025-02-16 18:40"
              )
    end

    it { is_expected.to respond_to(:duration) }
    it { is_expected.to respond_to(:distance) }
    it { is_expected.to respond_to(:timestamp) }

    describe '#timestamp' do
      it 'returns a DateTime' do
        expect(subject.timestamp).to be_a DateTime
      end
    end
  end

  describe ".count" do

    context "with 2 logged runs this week and 1 in next" do

      before(:all) do
        2.times do
          Run.log(:duration => rand(10),
                  :distance => rand(8),
                  :timestamp => "2025-02-12 20:30")
        end

        Run.log(:duration => rand(10),
                :distance => rand(8),
                :timestamp => "2025-02-17 20:30")
      end

      context "without arguments" do
        it "returns 3 runs" do
          expect(Run.count).to eq(3)
        end
      end

      context "with :week set to this week" do
        it "returns 2 runs" do
          expect(Run.count("2025-02-10")).to eq(2)
        end
      end

    end
  end

end
