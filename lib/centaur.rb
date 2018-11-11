class Centaur

  attr_reader :name, :breed, :laying, :cranky, :run_shoot_count, :standing, :rested, :sick
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @run_shoot_count = 0
    @laying = false
    @rested = true
    @sick = false
  end

  def shoot
    return "NO!" if cranky? || laying
    @run_shoot_count += 1
    @cranky = true if run_shoot_count >= 3
    return "Twang!!!"
  end

  def run
    return "NO!" if cranky? || laying
    @run_shoot_count += 1
    @cranky = true if run_shoot_count >= 3
    return "Clop clop clop clop!!!"
  end

  def potion
    return "NO!" unless standing
    @sick = true if rested
    @rested = true
  end

  def sleep
    return "NO!" if standing
    @run_shoot_count = 0
    @cranky = false
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def standing?
    standing
  end

  def laying?
    laying
  end

  def rested?
    rested
  end

  def sick?
    sick
  end

  def cranky?
    cranky || run_shoot_count >= 3
  end
end
