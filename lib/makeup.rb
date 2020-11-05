class Makeup
  attr_accessor :name, :product_type, :description
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end