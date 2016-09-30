# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

tipsy = SQLite3::Database.new("tips.db")
tipsy.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/feedback' do
  @tips = tipsy.execute("SELECT * FROM tips")
  erb :feedback
end

get '/tips/new' do
  erb :anon_form
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

post '/tips' do
  tipsy.execute("INSERT INTO tips (tip) VALUES (?)", [params['tip']])
  redirect '/feedback'
end



# add static resources