FROM ruby:2.7.5

# Set the working directory in the container
WORKDIR /app

# Set the Rails environment to production
ENV RAILS_ENV=production

# Install system dependencies
RUN apt-get update && \
    apt-get install -y build-essential tzdata

# Copy Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install project dependencies
RUN bundle install

# Copy the rest of the Rails app to the container
COPY . .

# Expose port 3000 (the default Rails server port)
EXPOSE 3000

# Start the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]
