# Route Number
# Destination
# Drive Method

class Buses
  attr_reader :number,:destination, :passengers

  def initialize(number,destination)
    @number = number
    @destination = destination
    @passengers = []
  end

  def drive(drive)
    "Brum Brum"
    if drive == "drive"
      return "Brum Brum"
    else
      return "Stopped"
    end
  end

  def pick_up(person)
    @passengers << person
  end

  def drop_off(person)
    if @passengers.include?(person)
      @passengers.delete(person)
    end
  end

  def unload
    @passengers.clear
  end


end
