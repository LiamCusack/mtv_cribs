require './lib/apartment.rb'

class Building
  attr_reader :units, :rented_units

  def initialize
    @units = []
    @rented_units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @units[:@name]
  end
end
