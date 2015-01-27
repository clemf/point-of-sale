require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("sinatra/activerecord")
require("./lib/product")
require("pg")

get '/' do
  @products = Product.all
  erb :index
end

post '/add_product' do
  name = params.fetch("name")
  price = params.fetch("price").to_f
  Product.create(name: name, price: price)
  redirect '/'
end
