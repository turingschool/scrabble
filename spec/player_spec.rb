require './lib/player'

describe Player do
  describe ".initialize" do
    it "has a name" do
      player = Player.new('Alex')
      expect(player.name).to eq 'Alex'
    end
  end

  describe ".plays" do
    it "starts empty" do
      player = Player.new('Alex')
      expect(player.plays).to eq []
    end

    it "records a play" do
      player = Player.new('Alex')
      player.play('hello')
      expect(player.plays).to include('hello')
    end
  end

  describe ".total_score" do
    it "starts at zero" do
      player = Player.new('Alex')
      expect(player.total_score).to eq 0
    end

    it "factors a play into the score" do
      player = Player.new('Alex')
      player.play('hello')
      assert_equal 8, player.total_score
    end
  end

  describe ".won?" do
    it "wins with a score of 100" do
      # Create a player
      # Play 'hello' 12 times
      # Query .won? which should return false
      # Play 'hello' again
      # Query .won? which should return true
    end

    it "prevents further plays" do
      # Create a player
      # Play 'hello' 13 times
      # Play 'hi' and check that it returns false
      # Query player.plays and make sure 'hi' is NOT there
    end
  end
end
