source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# gem 'sqlite3'

gem 'mysql2', '0.3.11'


gem "jquery-rails", "~> 1.0.19"
gem 'haml'
gem 'haml-rails', :group => :development
gem 'simple_form'
gem "nested_form", :git => 'https://github.com/fxposter/nested_form.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'sass-rails'
  gem 'bootstrap-sass'
end

gem 'birthday'
gem 'tinymce-rails' #, :git => 'https://github.com/spohlenz/tinymce-rails.git'

# authentication

gem 'devise', '1.4.9'
gem 'cancan'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

# markdown / autolink / embed
gem 'redcarpet'
gem 'auto_html'

#pagination
gem 'kaminari'

gem 'carrierwave'
gem 'rmagick'

# calendar
gem 'table_builder', '0.0.3', :git => 'git://github.com/jchunky/table_builder.git'

# autocomplete
gem 'rails3-jquery-autocomplete'



group :development do
  gem 'log_buddy'
  gem 'rails3-generators' # mainly for factory_girl & simple_form at this point
  gem 'factory_girl_rails'
  gem 'nifty-generators'
end

group :test do
  gem 'database_cleaner'
  gem 'rails3-generators' # mainly for factory_girl & simple_form at this point
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'cucumber-rails'
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'growl'
  gem 'capybara'
  gem 'guard-rspec'
  gem "mocha"
  gem 'log_buddy'
  gem 'ffaker'
end
