source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

# Specify the Rails version (use the latest stable release for security and bug fixes)
gem "rails", "~> 7.0.2", ">= 7.0.2.3"

# Use PostgreSQL as the database
gem "pg", "~> 1.1"

# Use Puma as the app server
gem 'puma', '~> 5.0'

# Use Jbuilder for JSON APIs
gem 'jbuilder', '~> 2.7'

# Use ImageProcessing for image processing
gem 'image_processing', '~> 1.12'

# Use Bootsnap to speed up application boot time
gem 'bootsnap', '>= 1.4.4', require: false

# Use Kaminari for pagination
gem 'kaminari', '~> 1.2'

# Use Active Model Serializers for JSON serialization
gem 'active_model_serializers', '~> 0.10'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', require: 'rack/cors'

group :development do
  gem 'bullet'
end

group :development, :test do
  # Use RSpec for testing
  gem 'rspec-rails', '~> 5.0'
    # Use factory_bot_rails for generating test data
  gem 'factory_bot_rails', '~> 6.0'
    # Use faker for generating fake data for testing
  gem 'faker', '~> 2.20'
    # Use shoulda-matchers for testing Rails applications
  gem 'shoulda-matchers', '~> 4.0'
  gem 'rails-controller-testing'

  gem "rswag", '~> 2.8.0'

  gem 'rubocop', require: false
end
# Use rails-i18n for internationalization support
gem 'rails-i18n'

# Hnadle HTTP REST APIs Errors
gem 'http_errors'

# Gems for User Authentication and Authorization
gem 'devise'
gem 'pundit'

# Gems for Background Jobs and Caching
gem 'sidekiq'
gem 'redis'

# Gems for File and Image Uploads
gem 'aws-sdk-s3'

# Gems for Grouping Data by Date and Time
gem 'groupdate'

# Gems for Geocoding IP Addresses and Maps
gem 'geocoder'
