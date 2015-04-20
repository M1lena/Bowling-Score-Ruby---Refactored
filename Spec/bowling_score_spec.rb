require 'bowling_score'

describe BowlingScores do
  it 'initial score is 0' do
    bowling = BowlingScores.new
    expect(bowling.score).to eq 0
  end

end
