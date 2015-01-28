point-of-sale
=============

A web app that tracks products and purchases by customer. You can associate products to a purchases in a many-to-many relationship. Written in [Ruby](http://www.ruby-lang.org/) with the help of [RSpec](http://rspec.info/), [Sinatra](http://www.sinatrarb.com/), and [Bootstrap](http://http://getbootstrap.com/). The data is stored in a PostgreSQL backend, managed by ActiveRecord.

Usage
-----

Run [Bundler](http://bundler.io/) from the project directory to install all the gems word-frequency depends on:

```ruby
bundle -install
```

To set up the database run these commands:

```
rake db:create
rake db:migrate
rake db:test:prepare
```

Start the Sinatra server:

```ruby
ruby app.rb
```

In your browser, navigate to [http://localhost:4567/](http://localhost:4567/).

About
-----

Written by Clem Freeman and Joey Sandine at [Epicodus](http://www.epicodus.com/).

License
-------

This projected is licensed under the terms of the MIT license.
