class Makeup
  attr_accessor :name, :product_type, :description
  
  @@all = []
  
  def initialize(name, product_type, description)
    @@all << self
    @name = name
    @product_type = product_type
    @description = description
  end
  
  def self.all
    @@all
  end
  
end