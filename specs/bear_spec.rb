require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class BearTest < MiniTest::Test

  def setup # order of these is important
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("trout")
    @fish2 = Fish.new("salmon")
    @fish3 = Fish.new("bass")
  end

  def test_bear_roar
    assert_equal("ROAAAAAR!", @bear.bear_roar)
  end

  def test_fishes_belly_count()
    assert_equal(0, @bear.fishes_belly_count)
  end

  def test_eat_from_river()
  @river1 = River.new("Tay")
  @river1.add_fishes(@fish1)
  # @river1.add_fishes(@fish2)
  # @river1.add_fishes(@fish3)
  @bear.eat_from_river(@river1)
  assert_equal(1, @bear.fishes_belly_count())
  assert_equal(0, @river1.fishes_count())
end

end
