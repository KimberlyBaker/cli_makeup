class Makeup
  attr_accessor :brand, :product_type, :name, :description
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end