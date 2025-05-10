FROM ruby:3.3.6

WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install

# COPY . /app in your downstream Dockerfile

ENV RACK_ENV=production
ENV APP_ENV=production

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "1312"]

EXPOSE 1312