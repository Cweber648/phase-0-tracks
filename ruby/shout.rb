module Shout

  def yell_angrily(words)
    "#{words.upcase}!!! :("
  end

  def yell_happily(words)
    "#{words.upcase}!!! :)"
  end

end

class Drill_Sergeant
  
  include Shout

end

class Soldier

  include Shout
  
end

# DRIVER CODE
taylor = Drill_Sergeant.new
gump = Soldier.new
puts taylor.yell_angrily("what are you smiling at?")
puts gump.yell_happily("nothing, sir")

