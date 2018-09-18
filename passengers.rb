class Person
  attr_reader :name,:age

  def initialize(name,age)
    @name = name
    @age = age
  end

  def name(name)
    return @name
  end
end
