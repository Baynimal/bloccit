source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'

# #1
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# #2
group :development do
  gem 'sqlite3'
end

group :development, :test do
  gem 'rspec-rails', '~>3.0'
  gem 'shoulda'
  gem 'factory_girl_rails', '~>4.0'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'


group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
gem 'bootstrap-sass'
#Use for encrypting User password
gem 'bcrypt'

gem 'figaro', '1.0'
