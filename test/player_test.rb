gem 'minitest'
require './lib/player'
require 'minitest/autorun'
require 'minitest/pride'

class PlayerTest < Minitest::Test
  def test_it_has_a_name
    player = Player.new('Alex')
    assert_equal 'Alex', player.name
  end

  def test_it_records_words_played
    player = Player.new('Alex')
    assert_equal [], player.plays
  end

  def test_it_records_a_total_score
    player = Player.new('Alex')
    assert_equal 0, player.total_score
  end

  def test_it_records_a_play
    player = Player.new('Alex')
    player.play('hello')
    assert player.plays.include('hello')
  end

  def test_a_play_is_factored_into_score
    player = Player.new('Alex')
    player.play('hello')
    assert_equal 8, player.total_score
  end

  def test_a_player_wins_with_a_score_of_100
    # Create a player
    # Play 'hello' 12 times
    # Query .won? which should return false
    # Play 'hello' again
    # Query .won? which should return true
  end

  def test_a_player_can_no_longer_play_once_they_have_won
    # Create a player
    # Play 'hello' 13 times
    # Play 'hi' and check that it returns false
    # Query player.plays and make sure 'hi' is NOT there
  end
end
