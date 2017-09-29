class Pokemon
  attr_accessor :name, :type, :td

  def initialize (name,type,db)
    @name = name
    @type = type
    @db = db
  end
end
