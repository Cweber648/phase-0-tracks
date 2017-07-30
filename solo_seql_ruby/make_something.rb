require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("personal_trainer.db")

db.results_as_hash = true

create_tbl_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS clients(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    workout VARCHAR(255),
    length INT,
    day VARCHAR(255)
  )
SQL

db.execute(create_tbl_cmd)

day_of_week = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

workouts = ['Cardio', 'Chest', 'Back', 'Core', 'Legs', 'Sprint']


def create_client(db, name, workout, length, day)
    db.execute("INSERT INTO clients (name, workout ,length, day) VALUES (?, ?, ?, ?)", [name, workout, length, day])
end

# new_day = day_of_week.each do |each_day|
# db.execute('INSERT INTO clients (day) VALUES (?)', each_day)
# end

# new_workout = workouts.each do |each_workout|
# db.execute('INSERT INTO clients (workout) VALUES (?)', each_workout)
# end

  9.times do
    create_client(db, Faker::Name.name, workouts.sample ,Faker::Number.between(45, 90), day_of_week.sample)
  end



 client_list = db.execute("SELECT * FROM clients")
   client_list.each do |client|
     puts "#{client['name']} is doing a #{client['workout']} workout for #{client['length']} minutes on #{client['day']}."
 end




