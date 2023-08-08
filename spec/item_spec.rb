require 'pry'
require './lib/item'

RSpec.describe Item do
  before(:each) do
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  it 'items exist with name and price' do
    expect(@item1).to be_an_instance_of(Item)
  end

end 
