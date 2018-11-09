require 'pry'
class Ogre

  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(someone)
    someone.encounter_counter += 1
    @encounter_counter += 1
    if someone.encounter_counter.to_i % 3 == 0
      someone.notices_ogre = true
      @swings += 1
    end
    if @swings % 2 == 0
      someone.knocked_out = true
    end
  end

  def swing_at(someone)
    @swings += 1
  end

  def apologize(someone)
    someone.knocked_out = false
  end

end

class Human

  attr_accessor :name, :encounter_counter, :notices_ogre, :knocked_out
  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @notices_ogre = false
    @knocked_out = false
  end

  def notices_ogre?
    @notices_ogre
  end

  def knocked_out?
    @knocked_out
  end


end
