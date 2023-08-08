require 'pry'
require './lib/item'
require './lib/vendor'

RSpec.describe Item do
  before(:each) do
    @vendor = Vendor.new("Rocky Mountain Fresh") 
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})   
  end

  it 'items exist with name and price' do
    expect(@vendor).to be_an_instance_of(Vendor)
  end

  it 'has attributes name and price' do
    expect(@vendor.name).to eq("Rocky Mountain Fresh")
    expect(@vendor.inventory).to eq({})
  end 
  
  it "has a #check_stock" do 
  @vendor = Vendor.new("Rocky Mountain Fresh")    

    expect(@vendor.inventory).to be_a Hash
    expect(@vendor.check_stock).to eq(0)
    @vendor.stock(@item1, 30)

    expected_hash = {@item1 => 30}

    expect(@vendor.inventory).to eq(expected_hash)
    expect(@vendor.check_stock(@item1)).to eq(30)
  end 
end 