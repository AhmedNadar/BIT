source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use Active Storage variant
gem 'image_processing', '~> 1.2'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false


group :development, :test do
  # Ruby fast debugger - base + CLI (https://github.com/deivid-rodriguez/byebug)
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # RSpec for Rails (https://github.com/rspec/rspec-rails)
  gem 'rspec-rails', '~> 3.9.0'
  # factory_bot_rails provides integration between factory_bot and rails 4.2 or newer (https://github.com/thoughtbot/factory_bot_rails)
  gem 'factory_bot_rails', '~> 5.1.1'
  gem 'database_cleaner', '~> 1.8.3'
end

group :development do
# A debugging tool for your Ruby on Rails applications. (https://github.com/rails/web-console)
  gem 'web-console', '>= 3.3.0'
  # Listen to file modifications (https://github.com/guard/listen)
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Rails application preloader (https://github.com/rails/spring)
  gem 'spring'
  # Makes spring watch files using the listen gem. (https://github.com/jonleighton/spring-watcher-listen)
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Better error page for Rails and other Rack apps (https://github.com/BetterErrors/better_errors)
  gem "better_errors"
  # Retrieve the binding of a method's caller. Can also retrieve bindings even further up the stack. (http://github.com/banister/binding_of_caller)
  gem "binding_of_caller"
  # A runtime developer console and IRB alternative with powerful introspection capabilities. (http://pry.github.io)
  gem 'pry', '~> 0.12.2'
  # Use Pry as your rails console (https://github.com/rweng/pry-rails)
  gem 'pry-rails'
  # Annotates Rails Models, routes, fixtures, and others based on the database schema. (http://github.com/ctran/annotate_models)
  gem 'annotate', '~> 3.1.1'
  gem 'responders', '~> 3.0.1'
end

group :test do
  gem 'capybara', '~> 3.31.0'
  gem 'capybara-webkit', '~> 1.15.1'
  gem 'webdrivers', '~> 4.4.1'
  gem 'rails-controller-testing'
  gem 'headless', '~> 2.3.1'
  gem 'poltergeist', '~> 1.18.1'
  gem 'selenium-webdriver', '~> 3.142.7'
end

# Flexible authentication solution for Rails with Warden (https://github.com/heartcombo/devise)
gem 'devise', '~> 4.7', '>= 4.7.1'
# A comprehensive slugging and pretty-URL plugin. (https://github.com/norman/friendly_id)
gem 'friendly_id', '~> 5.3'
gem 'name_of_person', '~> 1.1', '>= 1.1.1'
gem 'cancancan', '~> 3.1.0'
gem 'rolify', '~> 5.3.0'
gem "inline_svg", "~> 1.7"
gem "pagy", "~> 3.8"
gem "pay", "~> 2.1"
gem "simple_discussion", "~> 1.2"
gem "stripe_event", "~> 2.3"
# Ruby bindings for the Stripe API (https://stripe.com/docs/api/ruby)
gem 'stripe', '~> 5.25.0'
gem 'whenever', '~> 1.0'
gem 'rubocop', '~> 0.90.0'

# Use Hirb for better database table display in console
gem 'hirb', '0.7.3'
# Simple, efficient background processing for Ruby (http://sidekiq.org)
gem 'sidekiq', '~> 6.0', '>= 6.0.1'
# Namespaces Redis commands. (http://github.com/resque/redis-namespace)
gem 'redis-namespace'
# Redis for Ruby on Rails (http://redis-store.org/redis-rails)
gem 'redis-rails', '~> 5.0.2'
# A Redis backend store for Rack::Cache (http://redis-store.org/redis-rack-cache)
gem 'redis-rack-cache', '~> 2.2.1'
# Classy web-development dressed in a DSL (http://sinatrarb.com/)
gem 'sinatra', '>= 1.3.0', :require => nil #sidekiq dashboard

# Pretty print Ruby objects with proper indentation and colors (https://github.com/awesome-print/awesome_print)
gem 'awesome_print', '~> 1.8.0'
# A pagination engine plugin for Rails 4+ and other modern frameworks (https://github.com/kaminari/kaminari)
gem 'kaminari', '~> 1.2.1'
# Pagination plugin for web frameworks and other apps (https://github.com/mislav/will_paginate/wiki)
gem 'will_paginate', '~> 3.1.0'
# The official Rails gem for IPinfo. IPinfo prides itself on being the most reliable, accurate, and in-depth source of IP address data available anywhere. We process terabytes of data to produce our custom IP geolocation, company, carrier and IP type data sets. You can visit our developer docs at https://ipinfo.io/developers. (https://ipinfo.io)
gem 'ipinfo-rails', '~> 0.1.1'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# Timezone Data for TZInfo (https://tzinfo.github.io)
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]