source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Bootstrap 4 css framework
gem 'bootstrap', '~> 4.0.0.alpha3'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Authentication engine
gem 'devise'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development do
  # Better error pages for Rack Apps
  gem 'better_errors', '~> 2.1.1'
end

group :development, :test do
  # Makes pry the default Rails console
  gem 'pry-rails', '~> 0.3.4'
  # Adds control execution to pry
  gem 'pry-byebug', '3.1.0'
  # Awesome print gem for easier debugging
  gem 'awesome_print', '~> 1.6.1'
  # Testing framework
  gem 'rspec-rails'
  # Spring-Rspec integration
  gem 'spring-commands-rspec', '~> 1.0.4'
  # Setting up Ruby objects as test data
  gem 'factory_girl_rails', '~> 4.5.0'
  # Generate fake data for tests
  gem 'ffaker', '~> 2.0.0'
  # Controller specs
  gem 'rails-controller-testing'
end

group :test do
  # Rails rspec matchers
  gem 'shoulda-matchers', '~> 2.8.0'
  # Generate test coverage statistics
  gem 'simplecov', '~> 0.10.0', require: false
  # Integration testing
  gem 'capybara'
  # Ensure a clean state for testing
  gem 'database_cleaner', '~> 1.4.1', require: false
  # Capybara driver for headless WebKit for testing Javascript
  gem 'selenium-webdriver'
  # Capybara driver for testing Javascript

end

group :development do
  gem 'rubocop', '~> 0.46.0'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
