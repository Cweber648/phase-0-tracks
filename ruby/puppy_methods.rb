class Puppy


  def fetch(toy)
  @toy = toy
  puts "I brought back the #{@toy}!"
  toy
  end

  def speak(bark_times)
    puts "Woof!" *(bark_times)
  end

  def roll_over
    puts "roll over"
  end

  def dog_years(years)
    dog_years = 0
    @dog_years = dog_years
    @dog_years = years * 7
    puts "your dog is #{@dog_years}"
  end

  def sit
    puts "good boy"
  end

end
puppy1 = Puppy.new
puppy1.fetch('ball')
puppy1.speak(5)
puppy1.roll_over
puppy1.dog_years(5)
puppy1.sit