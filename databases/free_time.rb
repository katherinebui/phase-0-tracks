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

db.execute("INSERT INTO free_time (activity, location, length) VALUES ('take a walk in Golden Gate Park', 'Golden Gate Park', 20)")
# db.execute("INSERT INTO free_time (activity, location, length) VALUES ('take a nap', 'home', 20)")
# db.execute("INSERT INTO free_time (activity, location, length) VALUES ('walk the dog', 'Panhandle', 30)")
# db.execute("INSERT INTO free_time (activity, location, length) VALUES ('bake cookies', 'home', 60)")
# db.execute("INSERT INTO free_time (activity, location, length) VALUES ('call and catch up with a friend', 'home', 60)")
# db.execute("INSERT INTO free_time (activity, location, length) VALUES ('watch a movie/tv show', 'home', 60)")
# db.execute("INSERT INTO free_time (activity, location, length) VALUES ('explore a new neighborhood', 'anywhere', 180)")
# db.execute("INSERT INTO free_time (activity, location, length) VALUES ('read recipes', 'home', 60)")
# db.execute("INSERT INTO free_time (activity, location, length) VALUES ('read a book', 'the park', 90)")
# db.execute("INSERT INTO free_time (activity, location, length) VALUES ('go to the gym', 'gym', 90)")
# db.execute("INSERT INTO free_time (activity, location, length) VALUES ('go for a run', 'Golden Gate Park', 30)")

# def add_help(db, activity, location, length)
#   db.execute("INSERT INTO free_time (activity, location, length) VALUES (?, ?, ?)", [activity, location, length])
# end

# def add(db)
#   puts "If you would like to add an activity, please type in the activity, location, and length."
#     add_activity = gets.chomp.downcase
#     add_help(db, add_activity)
#   puts "This is what you added: #{add_activity}"
# end

# def randomize(db)

# end

# http://sqlite-ruby.rubyforge.org/sqlite3/faq.html
# http://www.w3schools.com/sql/sql_unique.asp
# http://www.rubydoc.info/github/luislavena/sqlite3-ruby/SQLite3/Database


