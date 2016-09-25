require 'sqlite3'

db = SQLite3::Database.new("free_time.db")
db.results_as_hash = true


# length in mins
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS free_time(
    id INTEGER PRIMARY KEY,
    activity VARCHAR(255),
    location VARCHAR(255),
    length INT,
    CONSTRAINT activity_unique UNIQUE (activity)
  )
  SQL


db.execute(create_table_cmd)


# populating table with data
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('take a walk in Golden Gate Park', 'Golden Gate Park', 20)")
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('take a nap', 'home', 20)")
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('walk the dog', 'Panhandle', 30)")
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('bake cookies', 'home', 60)")
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('call and catch up with a friend', 'home', 60)")
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('watch a movie/tv show', 'home', 60)")
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('explore a new neighborhood', 'anywhere', 180)")
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('read recipes', 'home', 60)")
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('read a book', 'the park', 90)")
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('go to the gym', 'gym', 90)")
db.execute("INSERT OR IGNORE INTO free_time (activity, location, length) VALUES ('go for a run', 'Golden Gate Park', 30)")


def create_act(db, activity, location, length)
  db.execute("INSERT INTO free_time (activity, location, length) VALUES (?, ?, ?)", [activity, location, length])
end


def add(db)
  puts "If you would like to add an activity- please type an activity."
    add_act = gets.chomp.downcase
  puts "Next, please type a location for your activity."
    add_location = gets.chomp.downcase
  puts "Last, enter a length in minutes."
    add_length = gets.chomp.downcase
    create_act(db, add_act, add_location, add_length)
  puts "You added #{add_act} at #{add_location} for #{add_length} minutes"
end


def display(db)
  activities = db.execute("SELECT * FROM free_time")
  puts "Here are all the activities that you can do during your free time:"
  activities.each do |act|
    puts "You can #{act['activity']} at #{act['location']} for #{act['length']} minutes!"
  end
end


def randomize(db)
  random = db.execute("SELECT * FROM free_time ORDER BY RANDOM() LIMIT 1;")
  random.each do |act|
    puts "You can #{act['activity']} at #{act['location']} for #{act['length']} minutes!"
  end
end

# USER INTERFACE

puts "Having trouble finding something to do during your free time? Well, I have a solution for you!"
puts "Type 'random' and I will give you something to do!"
puts "Type 'add' to add a new activity to the generator."
puts "To view all the activities, type 'display'."
puts "To exit the program, type 'exit'."
response = gets.chomp.downcase

if response == "random".downcase
  randomize(db)
elsif response == "add".downcase
  add(db)
elsif response == "display".downcase
  display(db)
elsif response == "exit".downcase
  exit
else
  puts "Sorry, I didn't get that. Please try again."
end








# http://sqlite-ruby.rubyforge.org/sqlite3/faq.html
# http://www.w3schools.com/sql/sql_unique.asp
# http://www.rubydoc.info/github/luislavena/sqlite3-ruby/SQLite3/Database

