require 'pry'
require './lib/item'
require './lib/vendor'

RSpec.describe Item do
  before(:each) do
    @vendor = Vendor.new("Rocky Mountain Fresh")    
  end

  it 'items exist with name and price' do
    expect(@vendor).to be_an_instance_of(Vendor)
  end

  it 'has attributes name and price' do
    expect(@vendor.name).to eq("Rocky Mountain Fresh")
    expect(@vendor.inventory).to eq({})
  end 
end 