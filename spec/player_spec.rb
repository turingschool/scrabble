require './lib/player'

describe Player do
  describe "#initialize" do
    xit "has a name" do
      player = Player.new('Alex')
      expect(player.name).to eq 'Alex'
    end
  end

  describe "#plays" do
    xit "starts empty" do
      player = Player.new('Alex')
      expect(player.plays).to eq []
    end

    xit "records a play" do
      player = Player.new('Alex')
      player.play('hello')
      expect(player.plays).to include('hello')
    end
  end

  describe "#total_score" do
    xit "starts at zero" do
      player = Player.new('Alex')
      expect(player.total_score).to eq 0
    end

    xit "factors a play into the score" do
      player = Player.new('Alex')
      player.play('hello')
      expect(player.total_score).to eq 8
    end
  end

  describe "#won?" do
    xit "wins with a score of 100" do
      # Create a player
      # Play 'hello' 12 times
      # Query .won? which should return false
      # Play 'hello' again
      # Query .won? which should return true
    end

    xit "prevents further plays" do
      # Create a player
      # Play 'hello' 13 times
      # Play 'hi' and check that it returns false
      # Query player.plays and make sure 'hi' is NOT there
    end
  end

  xit "it records the highest scoring word and highest score" do
    # Create a player
    # Play 'hi'
    # Play 'hello'
    # Play 'me'
    # Check that `#highest_scoring_word` returns 'hello'
    # Check that `#highest_word_score` return 8
  end
end
