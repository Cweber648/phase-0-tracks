module Shout

  def self.yell_angrily(words)
    "#{words.upcase}!!! :("
  end

  def self.yell_happily(words)
    "#{words.upcase}!!! :)"
  end

  # DRIVER CODE
  puts "Yell Angryily: #{self.yell_angrily('loud noises')}"
  puts "Yell Happily: #{self.yell_happily('loud noises')}"

end
