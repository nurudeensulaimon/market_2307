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

    def check_stock(item1)
         @check_stock
    end 

    def stock(item1, amount) 
       amount 
    end 
    
    def check_stock(item1)
      @stock
    end 
  end 

  #   def check_stock(inventory)
  #        @inventory
  #   end 
  # end 
# @inventory.each do | item, amount|
#   inventory.amount
#   def board_rider(visitor)
#     if visitor.preferences.include?(@excitement) && 
#       visitor.tall_enough?(@min_height) && 
#       visitor.spending_money >= @admission_fee
#           @rider_log[visitor] += 1
#           visitor.decrease_spending_money(@admission_fee)
#           # visitor.spending_money -= @admission_fee 
#     end
#   end

#   def total_revenue
#     # number times riden * admission fee
#     @rider_log.values.sum * @admission_fee
#   end
# end