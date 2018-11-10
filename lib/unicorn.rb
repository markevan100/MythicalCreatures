class Unicorn

  attr_reader :name, :color
  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def say(phrase)
    return "**;* #{phrase} **;*"
  end

  def white?
    return true if color == "white"
    false
  end
end
