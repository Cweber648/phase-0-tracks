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

1.times do
    create_client(db, Faker::Name.name, workouts.sample ,Faker::Number.between(45, 90), day_of_week.sample)
end

client_list = db.execute("SELECT * FROM clients")
  client_list.each do |client|
    puts "#{client['name']} is doing a #{client['workout']} workout for #{client['length']} minutes on #{client['day']}."
  end

create_tbl2_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS results(
    id INTEGER PRIMARY KEY,
    completed VARCHAR(255),
    intensity VARCHAR(255),
    next_workout VARCHAR(255),
    next_time VARCHAR(255),
    client_id  INT,
    FOREIGN KEY (client_id) REFERENCES clients(id)
  )
SQL

db.execute(create_tbl2_cmd)


def results_creation(db,client_list,workouts,day_of_week)
    client_list.each do |person|
      puts "Did #{person['name']} complete their workout?"
      completion = gets.chomp

      puts "How Was #{person['name']} Intensity"
      intensity = gets.chomp

      next_workout = workouts.sample
      puts "#{person['name']} next workout is #{next_workout}"

      next_time = day_of_week.sample
      puts "#{person['name']} next session is on #{next_time}"

      db.execute("INSERT INTO results (completed, intensity, next_workout, next_time) VALUES (?,?,?,?)", [completion, intensity, next_workout, next_time])
  end
end


results_creation(db,client_list,workouts,day_of_week)
results_list = db.execute("SELECT * FROM results")
p results_list



























