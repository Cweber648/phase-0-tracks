require 'sqlite3'
require 'faker'

db = SQLite3::Database.new('itinerary.db')
db.results_as_hash = true

create_flight_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS flight(
    id INTEGER PRIMARY KEY,
    departure_id INT,
    arrival_id INT
  )
SQL

create_departure_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS departure(
    id INTEGER PRIMARY KEY,
   date DATE,
    airline VARCHAR(255),
   departure DATETIME,
    arrival DATETIME
  )
SQL

create_arrival_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS arrival(
    id INTEGER PRIMARY KEY,
    date DATE,
    airline VARCHAR(255),
    departure DATETIME,
    arrival DATETIME
  )
SQL

db.execute(create_flight_cmd)
db.execute(create_departure_cmd)
db.execute(create_arrival_cmd)
