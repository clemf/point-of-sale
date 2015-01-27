ENV['RACK_ENV'] = 'test'
require("rspec")
require("pg")
require('product')
require('purchase')

RSpec.configure do |config|
  config.after(:each) do
    Product.all.each do |p|
      p.destroy
    end
    Purchase.all.each do |pu|
      pu.destroy
    end
  end
end
