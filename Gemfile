source 'https://rubygems.org'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'therubyracer', platforms: :ruby

gem 'rails', '4.2.5'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  # Added development group.
  gem 'byebug'
  gem 'rspec-rails', '~> 3.6'
  gem 'cucumber-rails', '~> 1.5', :require => false
  gem 'rails-controller-testing'
  gem 'factory_bot_rails'
  gem 'database_cleaner', '~> 1.6'
  gem 'capybara', '~> 2.15'

end

group :production do
  # Added postgres and made it production only.

  gem 'rails_12factor'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  #capistrano stuff for deployment!!!!
  gem 'capistrano',         require: false
  gem 'capistrano-rbenv',   require: false
  gem 'capistrano-rbenv-install', require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
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

gem 'puma', '~> 3.11.0'
gem 'pg', '~> 0.18.4'
