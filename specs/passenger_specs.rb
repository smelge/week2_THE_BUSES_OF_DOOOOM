require("Minitest/autorun")
require("minitest/rg")
require_relative("../passengers.rb")

class PassengerTest < MiniTest::Test
  def setup()
    @people1 = Person.new("Jacob Manpants","22")
    @people2 = Person.new("Lydia Buttons","89")
    @people3 = Person.new("Peter Green","389")
  end

  def test_name()
    assert_equal("Jacob Manpants",@people1.name())
  end

  def test_age()
    assert_equal("389",@people3.age)
  end




end
