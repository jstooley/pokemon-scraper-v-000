class Pokemon
  attr_accessor :id, :name, :type, :db, :hp

  def initialize (id:,name:,type:,db:, hp:nil)
    @name = name
    @type = type
    @db = db
    @id = id
    @hp = hp
  end

  def.self.save
  end
end
