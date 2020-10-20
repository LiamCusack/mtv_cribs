require 'minitest/autorun'
require 'minitest/pride'
require './lib/building'
require './lib/apartment'
require './lib/renter'
require 'pry'

class BuildingTest < Minitest::Test
  def test_it_exists
    building = Building.new

    assert_instance_of Building, building
  end

  def test_it_has_units
    building = Building.new

    assert_equal [], building.units
  end

  def test_it_adds_units
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal [unit1, unit2], building.units
  end

  def test_it_has_renters
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    building


    assert_equal [], building.renters
  end

  def test_it_has_renters
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    renter1 = Renter.new("Aurora")
    building.add_unit(unit1)
    unit1.add_renter(renter1)
    #binding.pry

    assert_equal ["Aurora"], building.renters
  end

  def test_it_adds_units
    building = Building.new
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})
    renter1 = Renter.new("Spencer")
    building.add_unit(unit1)
    building.add_unit(unit2)
    building.add_unit(unit3)

    assert_equal [], building.rented_units
  end
end

#screw it. stuck too long on a ridiculously dumb error in the beginning. no chance of finishing.
#feels like we were not taught some of this. Waiting for the review to see where I should direct
#my frustration.
