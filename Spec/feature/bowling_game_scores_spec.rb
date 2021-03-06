require 'capybara/rspec'
require 'bowling_score'

feature 'Bowling score for game' do
  let(:game) { BowlingScores.new }

  scenario 'first frame score is sum of two rolls' do
    game.first_frame_score(2, 3)
    expect(game.score).to eq 5
  end
end
