# def favorite_places
#   place1 = “Bend”
#   place2 = “Bay Harbor”
#   place3 = “White Water”
#   puts “What are your favorite places?”
# yield(place1, place2, place3)
# end

# favorite_places {|place1, place2, place3|
#   puts “#{place1} looks awesome, #{place2} even better, #{place3} sweet!“}


#ARRAY
cubs_players = ['Rizzo',
                'Bryant',
                'Russell',
                'Baez',
                'Lester'
]

 cubs_players.each do |names|
  puts names.upcase
 end
 p cubs_players


cubs_players.map! do |names1|
puts names1
  names1 << ('- World Series Champion')
end
p cubs_players

#HASH

cubs_numbers = {
  :Bryant => 17,
  :Rizzo => 44,
  :Baez => 9,
  :Russell => 27,
  :Happ => 8,
  :Lester => 34 ,
}

cubs_numbers.each do |number, status|
   puts number.upcase
   puts status.next
end
p cubs_numbers


cubs_numbers.each do |number, status|
  if number.length <= 5
    p number.upcase
  end
end
  p cubs_numbers


