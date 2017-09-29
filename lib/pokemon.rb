class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  def initialize (id:,name:,type:,db:, hp:nil)
    @name = name
    @type = type
    @db = db
    @id = id
    @hp = hp
  end

  def self.save(name, type,db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?,?)", name, type)
  end

  def self.find(id_num, db)
    pokemon_found = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    Pokemon.new(id: pokemon_found[0], name: pokemon_found[1], type: pokemon_found[2], hp: pokemon_found[3], db: db)
  end

  def alter_hp(new_hp, db)
    sql = <<-SQL
    UPDATE pokemon SET hp = ? WHERE id = ?
    SQL
     db.execute(sql, new_hp, self.id).flatten
  end
end
