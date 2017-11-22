source 'https://rubygems.org'
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.4'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do  # Added development group.
  gem 'sqlite3'
  gem 'byebug'
  gem 'rspec-rails', '~> 3.6'
  gem 'cucumber-rails', '~> 1.5', :require => false
  gem 'rails-controller-testing'
end

group :production do  # Added postgres and made it production only.
  gem 'pg', '~> 0.18.4'
  gem 'rails_12factor'
end # Added postgres and made it production only.

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# gems for the app itself
gem 'devise'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'
gem 'actionview'
gem 'time_ago_in_words'
gem 'rails_db'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'geocoder'
