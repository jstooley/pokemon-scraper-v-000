class Pokemon
  attr_accessor :id, :name, :type, :td, :hp

  def initialize (id:,name:,type:,db:, hp:nil)
    @name = name
    @type = type
    @db = db
    @id = id
    @hp = hp
  end
end
