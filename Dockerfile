FROM starefossen/ruby-node:2-8

ENV TZ=Pacific/Auckland
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir -p /rails
WORKDIR /rails
ADD Gemfile .
ADD Gemfile.lock .

RUN gem install bundler
RUN bundle install --without test --without development --deployment

ADD . .

ENV RAILS_ENV 'production'
ENV RAILS_SERVE_STATIC_FILES 'yes'

RUN rake assets:precompile

CMD ./docker_entrypoint.sh
