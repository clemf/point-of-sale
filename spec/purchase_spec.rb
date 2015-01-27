require 'spec_helper'

describe 'Purchase' do
  it 'adds a product to a purchase in the database' do
    product = Product.create(name: 'fish', price: 10.00)
    purchase = Purchase.create(customer_name: 'Bob Smith')
    purchase.products << product
    expect(purchase.products).to eq [product]
  end
end
