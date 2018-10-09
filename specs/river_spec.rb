require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")


class RiverTest < MiniTest::Test

  def setup # order of these is important

    @river = River.new("clyde")
    @fish1 = Fish.new("trout")
    @fish2 = Fish.new("salmon")
    @fish3 = Fish.new("bass")
  end

  def test_fishes_count()
    assert_equal(0, @river.fishes_count)
  end

  def test_add_fishes()
    @river.add_fishes(@fish1)
    @river.add_fishes(@fish2)
    @river.add_fishes(@fish3)
    assert_equal(3, @river.fishes_count())
  end


    def test_clear_fishes()
      @river.clear_fishes()
      assert_equal(0, @river.fishes_count())
    end









end
