source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'execjs'


# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'




# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# use Haml for templates
gem 'haml'
# use Ruby debugger
group :development, :test do
  gem 'ruby-debug19'
  gem 'cucumber-rails'
  gem 'cucumber-rails-training-wheels' # some pre-fabbed step definitions  
  gem 'database_cleaner' # to clear Cucumber's test database between runs
  gem 'capybara'         # lets Cucumber pretend to be a web browser
  gem 'launchy'          # a useful debugging aid for user stories
  gem 'sqlite3'
end

group :production do
  gem 'pg' # use PostgreSQL in production (Heroku)
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development, :test do
  gem 'rspec-rails'
  gem 'simplecov'
end

group :test do
  gem 'email_spec'
end

gem 'actionmailer'
gem 'bootstrap-sass'