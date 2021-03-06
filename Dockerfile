FROM ruby:2.2.3
RUN mkdir -p /app
WORKDIR /app
COPY Gemfile /app
RUN bundle install
COPY . /app
EXPOSE 5000
WORKDIR /app
ENV PORT 5000
CMD ["ruby", "server.rb", "-p", "5000"]
