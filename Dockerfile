FROM ruby:2.6.5

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get update && apt-get install -y nodejs && npm install --global yarn

COPY . /teste-back-end

WORKDIR /teste-back-end

ENV RAILS_ENV production

RUN gem install bundler:2.1.4 \
    && bundle install 


ENTRYPOINT ./entrypoint.sh