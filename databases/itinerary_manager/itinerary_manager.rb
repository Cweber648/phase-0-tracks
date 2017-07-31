require 'sqlite3'
#require 'faker'

# CREATE A DATABASE
db = SQLite3::Database.new('itinerary.db')
db.results_as_hash = true

create_table_cmd= <<-SQL
  CREATE TABLE IF NOT EXISTS flight(
    id INTEGER PRIMARY KEY,
    date VARCHAR(255),
    airline VARCHAR(255),
    departure VARCHAR(255),
    arrival VARCHAR(255) 
  )
SQL

# CREATE TABLES
db.execute(create_table_cmd)

# METHODS TO INSERT DATA INTO TABLES
def add_flight(db, date, airline, departure, arrival)
  db.execute("INSERT INTO flight (date, airline, departure, arrival) VALUES (?, ?, ?, ?)", [date, airline, departure, arrival])
end


# GET USER INPUT
def ui
  info= {}

  puts "Date:" 
  info[:date] = gets.chomp
  puts "Airline:"
  info[:airline] = gets.chomp
  puts "Departure time:"
  info[:departure] = gets.chomp
  puts "Arrival time:"
  info[:arrival] = gets.chomp

  info
end

# DISPLAY ITINERARY
def display_itinerary(db)
  itinerary = db.execute("SELECT * FROM flight")
  itinerary.each do |flight| 
    puts "|DATE|AIRLINE|DEPART|ARRIVAL|"
    puts "|#{flight["date"]}|#{flight["airline"]}|#{flight["departure"]}|#{flight["arrival"]}|"
  end
  puts "---------------------------------"
end

# Program
# Get user input
# add data into database
# display database
puts "Do you want to add new flight? yes/no"
new_item = gets.chomp
if new_item == 'yes'
  puts "New flight:"
  flight = ui
  add_flight(db, flight[:date], flight[:airline], flight[:departure], flight[:arrival])
  puts "List of flights"
  display_itinerary(db)
else
  display_itinerary(db)
end
