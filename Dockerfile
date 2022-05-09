FROM ruby:2.5
RUN apt-get update 
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

#フォルダーがなかった時、コンテナにフォルダーを作成する
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register
RUN bundle install