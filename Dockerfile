# Base image
FROM ruby:3.1.1

# Set working directory
WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y nodejs postgresql-client

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy application code
COPY . .

# Start the application
CMD ["rails", "server", "-b", "0.0.0.0"]
