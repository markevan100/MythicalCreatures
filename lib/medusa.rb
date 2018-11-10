class Medusa

  attr_reader :name, :statues
  def initialize(name, statues = [])
    @name = name
    @statues = statues
  end

  def stare(hero)
      hero.stoned
    if @statues.count <= 2
      @statues << hero
    else
      @statues[0].unstoned
      @statues.shift
      @statues << hero
    end
  end
end

class Person
  attr_reader :name
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned
    @stoned = true
  end

  def unstoned
    @stoned = false
  end

  def stoned?
    @stoned
  end
end
