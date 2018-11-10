class Dragon

  attr_accessor :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @eat_counter = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @eat_counter += 1
    if @eat_counter == 3
      return @hungry = false
    else
      return @hungry
    end
  end
end
