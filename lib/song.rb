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
    song = self.new
    @@all << song 
    song 
    
  end 
  
  def self.new_by_name(string)
    song = self.new
    song.name = string
    song
  end 
  
  def self.create_by_name(string)
    song = self.new
    song.name = string 
    @@all << song 
    song
  end 
    
  def self.find_by_name(string)
    @@all.find do |names|
     names.name == string
    end
   
  end 
  
  def self.find_or_create_by_name(string)
   if  @@all.find { |names| names.name == string}
     
    
    

end
