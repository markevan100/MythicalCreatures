class Pirate

attr_reader :name, :job, :booty
  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @act_counter = 0
    @booty = 0
  end

def cursed?
  if @act_counter < 3
    return false
  else
    return true
  end
end

def commit_heinous_act
  @act_counter += 1
end

def rob_ship
  @booty = 100
end

end
