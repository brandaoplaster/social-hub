FROM ruby:2.3-slim

# add nodejs and yarn dependencies for the frontend
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Install the dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
nodejs yarn build-essential libpq-dev imagemagick git-all nano


# Set the path
ENV INSTALL_PATH /social-hub

# Create directory
RUN mkdir -p $INSTALL_PATH

# Setting the main directory path
WORKDIR $INSTALL_PATH

# Copy Gemfile into container
COPY Gemfile ./

# Set path to Gems
ENV BUNDLE_PATH /box

# Copy the code into the container
COPY . .