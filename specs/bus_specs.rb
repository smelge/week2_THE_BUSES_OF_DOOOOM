require("Minitest/autorun")
require("minitest/rg")
require_relative("../buses.rb")
require_relative("../passengers.rb")

class BusesTest < MiniTest::Test
  def setup()
    @person1 = Person.new("Jacob Manpants","22")
    @person2 = Person.new("Lydia Buttons","89")
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

  def test_how_many_passengers__empty
    assert_equal(0, @route1.passengers.length)
  end

  def test_how_many_passengers__someone
    @route1.pick_up(@person1)
    assert_equal(1, @route1.passengers.length)
  end

  def test_kill_passenger
    @route1.pick_up(@person1)
    @route1.pick_up(@person2)
    @route1.drop_off(@person1)
    assert_equal(1, @route1.passengers.length)
  end

  def test_empty_passengers
    @route1.pick_up(@person1)
    @route1.pick_up(@person2)
    @route1.unload()
    assert_equal(0, @route1.passengers.length)
  end
end
