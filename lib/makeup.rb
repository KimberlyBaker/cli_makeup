class Makeup
  attr_accessor :brand, :description, :product_type
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end