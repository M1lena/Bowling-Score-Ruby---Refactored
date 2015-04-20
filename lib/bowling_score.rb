require_relative 'bowling_frame'
# new
class BowlingScores
  attr_accessor :first_frame, :second_frame, :third_frame
  attr_reader :score

  def initialize
    @score = 0
  end

  def first_frame_score(roll1, roll2)
    @first_frame = BowlingFrame.new(roll1, roll2)
    first_frame.raw_total
    @score = score + first_frame.raw_total
  end

  def second_frame_score
    @second_frame = BowlingFrame.new(roll1, roll2)
  end
end

game = BowlingScores.new

puts game.first_frame_score(2, 3)
puts game.first_frame.spare?
puts game.score

