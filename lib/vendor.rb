require './lib/item'
require './lib/vendor'

require 'pry'
class Vendor
  attr_reader :name,
              :inventory,
              :check_stock
              
    def initialize(name)
      @name =  name 
      @inventory = Hash.new(0)
      @check_stock = 0
    end 

    def check_stock
         @check_stock
    end 

    def stock(item1, amount) 
       @check_stock += amount 
    end 

    def check_stock(item1,amount)
        @stock
    end  
end  
    
  