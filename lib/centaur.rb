class Centaur

attr_reader :name, :breed

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
  @run_shoot_count += 1
  if @run_shoot_count >= 3
    @cranky = true
    return "NO!"
  elsif @laying == true
    return "NO!"
  elsif @cranky == true
    return "NO!"
  else
    return "Twang!!!"
end
end

def run
  @run_shoot_count += 1
  if @run_shoot_count >= 3
    @cranky = true
    return "NO!"
  elsif @laying == true
    return "NO!"
  elsif @cranky == true
    return "NO!"
    else
  return "Clop clop clop clop!!!"
end
end

def cranky?
  #if @run_shoot_count == 3
  #  @cranky = true
  #else
    @cranky
  #end
end

def stand_up
  @standing = true
  @laying = false
end

def standing?
  @standing
end

def sleep
  if @standing == true
    return "NO!"
  else
    @run_shoot_count = 0
    @cranky = false
  end
end

def lay_down
  @standing = false
  @laying = true
end

def laying?
  @laying
end

def rested?
  @rested
end

def sick?
  @sick
end

  def potion
    return "NO!" unless @standing
    if @rested == true
      @sick = true
    else
       @rested = true
  end
end
end
