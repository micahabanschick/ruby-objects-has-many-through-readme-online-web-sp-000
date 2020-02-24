class Waiter 
  
  attr_accessor :name, :exp, :meals, :customers  
  
  @@all = []
  
  def initialize(name, exp)
    @name = name
    @exp = exp 
    @meals = []
    @customers = []
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_meal(customer,total,tip)
    Meal.new(self,customer,total,tip)
  end 
  
  def meals
    @meals
  end 
  
  def customers
    @customers
  end 
  
  def best_tipper
    @meals.map{|meal| meal.customer if meal.tip.max}
  end 
  
end