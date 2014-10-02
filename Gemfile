source 'https://rubygems.org'
ruby "2.1.2"

gem 'rails', '4.1.0'

gem 'rails-api'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.1.2'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3'
  gem 'spring'
end

# Use unicorn as the app server
gem 'unicorn'