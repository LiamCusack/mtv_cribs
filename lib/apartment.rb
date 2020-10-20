require './lib/building'
class Apartment
  attr_reader :renter

  def initialize(attributes = {}, renter = nil)
    @number = attributes[:number]
    @monthly_rent = attributes[:monthly_rent]
    @bathrooms = attributes[:bathrooms]
    @bedrooms = attributes[:bedrooms]
    @renter = renter
  end

  def number
    @number
  end

  def monthly_rent
    @monthly_rent
  end

  def bathrooms
    @bathrooms
  end

  def bedrooms
    @bedrooms
  end

  def add_renter(newrenter)
    @renter = newrenter
  end
end
