FROM ruby:2.7.5

ENV APP /app

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y build-essential default-mysql-client vim wget nodejs yarn

RUN mkdir $APP
WORKDIR $APP
COPY Gemfile $APP/Gemfile
COPY Gemfile.lock $APP/Gemfile.lock

RUN bundle config --local build.sassc --disable-march-tune-native
RUN bundle install
COPY ./ $APP
