require 'bowling_frame'

describe BowlingFrame do
  # let(:first_frame) { BowlingFrame.new(9, 1) }

  it 'cannot play negative rolls' do
    expect { first_frame.player_rolls(-1, 0) }.to raise_error
    ('no negative rolls allowed')
  end

  it 'cannot play rolls that add up to more than 10' do
    expect { first_frame.player_rolls(5, 6) }.to raise_error
    ('there are only 10 pins to hit!')
  end

  it 'can assess a spare' do
    first_frame = BowlingFrame.new(9, 1)
    expect(first_frame.spare?).to eq true
  end

  it 'can assess raw total pins hit for frame' do
    first_frame = BowlingFrame.new(9, 1)
    expect(first_frame.raw_total).to eq 10
  end
end
