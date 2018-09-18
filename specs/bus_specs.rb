require("Minitest/autorun")
require("minitest/rg")
require_relative("../buses.rb")

class BusesTest < MiniTest::Test
  def setup()
    @route1 = Buses.new("22","Ocean Terminal")
    @route2 = Buses.new("N34","Bottom of the Forth")
    @route3 = Buses.new("37","Penicuik")
  end

  def test_bus_number()
    assert_equal("22",@route1.number())
  end

  def test_bus_destination()
    assert_equal("Penicuik",@route3.destination())
  end

  def test_drive_move()
    assert_equal("Brum Brum",@route2.drive("drive"))
  end

  def test_drive_stop()
    assert_equal("Stopped",@route3.drive("stop"))
  end
end
