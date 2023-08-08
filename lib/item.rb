class Item 
attr_reader :name,
            :price
  def initialize(fruit)
    @name = fruit[:name]
    @price = format_price(fruit[:price])
  end 

  def format_price(money)
    money.gsub("$", "").to_f
  end 
end
