# Build environment for the Jekyll site, matching the Ruby version used in CI.
FROM ruby:3.2

WORKDIR /srv/jekyll

# Install gems in their own layer so they're cached between site edits.
COPY Gemfile Gemfile.lock ./
RUN bundle install

EXPOSE 4000 35729

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--baseurl", ""]
