class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    person = Song.new
    @@all << person.name 
    person.name
  end 
    

end
