require_relative 'spec_helper'

describe "rider_id" do
  let(:my_rider) {RideShare::Rider.new(1, 2, 3)}

  describe "Diver#initialize" do
    it "takes an ID, Name, and Phone Number to initialize" do
      my_rider.must_respond_to :id
      my_rider.must_respond_to :name
      my_rider.must_respond_to :phone
    end
  end

  describe "Rider#trips" do
    it "returns an array of trips that this rider has taken" do
      my_rider.trips.must_be_instance_of Array
    end

  #   it "each item is of class Trip" do
  #     my_driver.trips.each do |trip|
  #       trip.must_be_instance_of RideShare::Trip
  #     end
  #   end
  #
  #   it "trips.length matches number of trips from CSV file for that driver" do
  #     trips_number = my_driver.trips.length
  #     lines_from_csv = []
  #     trips_csv.each do |line|
  #       if line[1].to_i == my_driver.id
  #         lines_from_csv << line
  #       end
  #     end
  #     lines_from_csv.length.must_equal trips_number
  #   end
  #
  #   it "Returns 0 if driver is not found" do
  #     bad_id = RideShare::Driver.new(77777, "Mr. Shanie Gusikowski", "XF9HHMKS402GD41NF")
  #     bad_id.trips.must_equal 0
  #   end
  end

end
