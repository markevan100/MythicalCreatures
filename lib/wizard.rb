class Wizard

  attr_reader :name, :bearded
  def initialize(name, bearded = {:bearded => true})
    @name = name
    @bearded = bearded
    @cast_counter = 0
  end

  def bearded?
    @bearded[:bearded]
  end

  def incantation(phrase)
    return "sudo #{phrase}"
  end

  def rested?
    if @cast_counter == 3
      return false
    else
      return true
    end
  end

  def cast
    @cast_counter += 1
    return "MAGIC MISSILE!"
  end
end
