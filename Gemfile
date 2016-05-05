ruby '2.2.3'
source 'https://rubygems.org'

gem 'rails', '~> 4.1'
gem 'spring', group: 'development'
gem 'sqlite3'

gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'uglifier'

gem 'bourbon'
gem 'bitters'
gem 'neat'

gem 'dynamic_form'
gem 'jbuilder'
gem 'rack-rewrite'
gem 'chronic'

gem 'paperclip'
gem 'aws-sdk'
gem 'high_voltage'
gem 'kramdown'
gem 'simple_mercator_location'
gem 'geocoder'

group :production do
  # Bumping some unicorn deps so the app builds on 2.2.0
  gem 'unicorn'
  gem 'kgio', '~> 2.9.3'
  gem 'raindrops', '~> 0.13.0'

  gem 'rails_12factor'
  gem 'memcachier'
  gem 'dalli'
end

group :test do
  gem 'capybara'
  gem 'launchy'
end
