# Route Number
# Destination
# Drive Method

class Buses
  attr_reader :number,:destination

  def initialize(number,destination)
    @number = number
    @destination = destination
  end

  def drive(drive)
    "Brum Brum"
    if drive == "drive"
      return "Brum Brum"
    else
      return "Stopped"
    end
  end
end
