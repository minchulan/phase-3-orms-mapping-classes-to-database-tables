# In this file, we're requiring in the environment.rb file (which loads the code for our database connection, as well as the Song class), and has a binding.pry to set a breakpoint where you can enter a Pry session.

require 'bundler'
Bundler.require

require_relative '../lib/song'

# constant, DB, that is equal to a hash that contains our connection to the database 
DB = { conn: SQLite3::Database.new("db/music.db") }


