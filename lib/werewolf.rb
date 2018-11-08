class Werewolf

attr_reader :name, :location
def initialize(name, location = nil)
  @name = name
  @location = location
  @human = true
  @wolf = false
  @hungry = false
end

def human?
  @human
end

def wolf?
  @wolf
end

def hungry?
  @hungry
end

def consumes(someone, somewolf)
  if somewolf.wolf? == true
  someone.status = :dead
  @hungry = false
end
end


def change!
  if @human == false
   return @wolf = false, @human = true
 else
   return @wolf = true, @human = false, @hungry = true
 end

end




end
