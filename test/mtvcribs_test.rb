require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require 'pry'

class ApartmentTest < Minitest::Test
  def test_it_exists
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})


    assert_instance_of Renter, renter1
    assert_instance_of Apartment, unit1
  end

  def test_it_has_number
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})


    assert_equal "A1", unit1.number
  end

  def test_it_has_rent
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})


    assert_equal 1200, unit1.monthly_rent
  end

  def test_it_has_bathrooms
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})


    assert_equal 1, unit1.bathrooms
  end

  def test_it_has_bedrooms
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})


    assert_equal 1, unit1.bedrooms
  end

  def test_it_has_renter
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})


    assert_equal nil, unit1.renter
  end

  def test_it_adds_renters
    renter1 = Renter.new("Jessie")
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit1.add_renter(renter1)


    assert_equal renter1, unit1.renter
  end
end

screw it. stuck too long on a ridiculously dumb error in the beginning. no chance of finishing.
