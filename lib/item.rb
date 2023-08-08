class Item 
attr_reader :name,
            :price
  def initialize(fruit)
    @name = fruit[:name]
    @price = fruit[:price]
  end 

  def format_price(money)
    money.delete("$").to_i
  end 
end
