require_relative 'bowling_frame'

class BowlingScores
  attr_reader :score

  def initialize
    @score = 0
  end

  def first_frame_score
    first_frame = BowlingFrame.new(roll1, roll2)
    raw_total
  end

  def second_frame_score
    second_frame = BowlingFrame.new(roll1, roll2)
  end
end
