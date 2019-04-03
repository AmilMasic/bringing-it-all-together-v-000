class Dog

  attr_accessor :name, :breed, :id


  def initialize(h)
    h.each {|k,v| public_send("#{k}=",v)}
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXIST dogs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT
      )
      SQL

      DB[:conn].execute(sql)
  end
  
end
