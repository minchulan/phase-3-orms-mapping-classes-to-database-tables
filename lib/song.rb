class Song

  attr_accessor :name, :album, :id 

  def initialize(name:, album:, id: nil)
    @id = id 
    @name = name
    @album = album
  end

  # To "map" our class to a database table, we will create a table with the same name, pluralized, as our class, and give that table column names that match the attr_accessors of our class. Will map instance attributes to table columns.

  def self.create_table # class method creates this DB table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS songs ( 
        id INTEGER PRIMARY KEY,
        name TEXT,
        album TEXT
      )
      SQL
    DB[:conn].execute(sql) # access the DB constant and database connection like this DB[:conn]. Call execute and pass in sql.
  end 

end