require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("sinatra/activerecord")
require("./lib/product")
require("./lib/purchase")
require("pg")

get '/' do
  @products = Product.all
  @purchases = Purchase.all
  erb :index
end

post '/add_product' do
  name = params.fetch("name")
  price = params.fetch("price").to_f
  Product.create(name: name, price: price)
  redirect '/'
end

get '/product/:id' do
  @product = Product.find(params.fetch("id"))
  erb :product
end

patch("/product/:id") do
  name = params.fetch("name")
  price = params.fetch("price").to_f
  @product = Product.find(params.fetch("id").to_i)
  @product.update({:name => name, :price => price})
  erb(:product)
end

delete '/product/:id' do
  product = Product.find(params.fetch("id").to_i)
  product.delete
  redirect '/'
end

post '/add_purchase' do
  customer_name = params.fetch("customer_name")
  Purchase.create(customer_name: customer_name)
  redirect '/'
end

get '/purchase/:id' do
  @purchase = Purchase.find(params.fetch("id"))
  erb :purchase
end
