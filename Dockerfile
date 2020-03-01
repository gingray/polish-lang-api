FROM gingray/ruby-node:2.5.1-8 as builder

RUN apk add --no-cache tzdata postgresql-dev build-base git

WORKDIR /app

ENV RAILS_ENV=production
ENV NODE_ENV=production

COPY Gemfile Gemfile.lock /app/
RUN bundle install --jobs 4 --without development:test --deployment

COPY . /app/

############################################################
FROM gingray/ruby-node:2.5.1-8

RUN apk add --no-cache tzdata postgresql-dev
RUN apk add --no-cache nodejs

ENV RAILS_ENV=production

WORKDIR /app
COPY . /app/
COPY --from=builder /usr/local/bundle/config /usr/local/bundle/config
COPY --from=builder /app/vendor/bundle/ /app/vendor/bundle/

EXPOSE 3000 3001

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
