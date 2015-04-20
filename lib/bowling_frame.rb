# new
class BowlingFrame
  attr_accessor :roll1, :roll2
  attr_reader :raw_total

  def initialize(roll1, roll2)
    @roll1 = roll1
    @roll2 = roll2
  end

  def invalid_rolls(roll1, roll2)
    roll1 + roll2 > 10
  end

  def negative_rolls(roll1, roll2)
    roll1 < 0 || roll2 < 0
  end

  def player_rolls(roll1, roll2)
    fail 'there are only 10 pins to hit!' if invalid_rolls(roll1, roll2)
    fail 'no negative rolls allowed' if negative_rolls(roll1, roll2)
    @raw_total
  end

  def raw_total
    @raw_total = roll1 + roll2
  end

  def spare?
    raw_total == 10
  end
end
