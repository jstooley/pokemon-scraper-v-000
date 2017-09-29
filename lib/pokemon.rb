class Pokemon
  attr_accessor :id, :name, :type, :td

  def initialize (id,name,type,db)
    @name = name
    @type = type
    @db = db
    @id = id
  end
end
