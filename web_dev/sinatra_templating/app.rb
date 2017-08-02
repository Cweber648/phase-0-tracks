# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources
get '/addresses' do
  @addresses = {austin:"1705 Guadalupe Street, 1st Fl Austin, TX 78701", 
                Chicago:"1033 W. Van Buren Street, 3rd Fl Chicago, IL 60607",
                nyc:"48 Wall St, 15th Fl New York, NY 10005",
                sd:"707 Broadway, Suite 800 San Diego, CA 92101",
                sf:"633 Folsom Street (at Hawthorne), 6th Floor San Francisco CA 94107",
                seattle:"83 S. King StreetSeattle, WA 98104"}
  erb :addresses
end
