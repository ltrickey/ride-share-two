
class RideShare::Driver
  attr_reader :id, :name, :vin

  def initialize(id, name, vin)
    @id = id
    @name = name

    unless vin.length == 17
      raise InvalidVinError.new("VIN numbers should be 17 characters")
    end
    @vin = vin
  end

  def trips
    RideShare::Trip.find_all_driver(@id)
  end

  def average_rating
    trips
    total = 0

    trips.each do |trip|
      total += trip.rating
    end

    return (total / trips.length)
    #returns an Integer.  Possible turn into a float?
  end

  def self.find_all
    drivers = []

    CSV.open("support/drivers.csv").each do |driver|
      begin
        drivers << RideShare::Driver.new(driver[0].to_i, driver[1], driver[2])
      rescue InvalidVinError => e
        puts "#{ e }"
      end
    end
    return drivers
  end
end
