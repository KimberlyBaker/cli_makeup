class Brand
  attr_accessor :name, :description, :product_type
  
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end