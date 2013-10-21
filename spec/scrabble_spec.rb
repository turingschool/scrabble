require './lib/scrabble'

describe Scrabble do
  describe ".score" do
    it "scores a single letter" do
      expect( Scrabble.score("a") ).to eq 1
      expect( Scrabble.score("f") ).to eq 4
    end
  end
end
