require('rspec')
require('scrabble_score')

describe('String#scrabble_score') do
  it("returns a scrabble score for a letter") do
  expect("a".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for multiple letters") do
  expect("quiz".scrabble()).to(eq(22))
  end
end
