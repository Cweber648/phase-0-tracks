# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Release 0
# 1. Route that displays an address
get '/contact' do
  "Address: 48 Wall St, New York, NY 10005"
end

# 2. Route that can take a person's name as a query parameter
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# 3. Route that uses route parameters to add two numbers
get '/:number_1/plus/:number_2' do
  x = params[:number_1]
  y = params[:number_2]
  "#{x} + #{y} = #{x.to_i + y.to_i}" 
end

# 4. Route that allows the user to search that database in some way
# SQL injection
get '/:sql' do
  command = params[:sql]
  db.execute(command).to_s
end
