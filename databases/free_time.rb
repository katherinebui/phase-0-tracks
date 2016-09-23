require 'sqlite3'

db = SQLite3::Database.new("free_time.db")
db.results_as_hash = true


=begin
 id INTEGER PRIMARY KEY,
  activity VARCHAR(255),
  length INT,
  location VARCHAR(255),
  solo BOOLEAN 
=end

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS free_time (
    id INTEGER PRIMARY KEY,
    activity VARCHAR(255),
    location VARCHAR(255),
    length INT
  );
  SQL
end

db.execute(create_table_cmd)

def add_help(db, activity, location, length)
  db.execute("INSERT INTO free_time (activity, location, length) VALUES (?, ?, ?)", [activity, location, length])
end

def add(db)
  p ""
end