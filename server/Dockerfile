FROM ruby:3.2.2-alpine3.18

RUN set -x && apk add --no-cache \
                      build-base \
                      # for nokogiri
                      gcompat \
                      # for rails new
                      git \
                      # for pg
                      postgresql-dev \
                      # for tzinfo-data
                      tzdata

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
