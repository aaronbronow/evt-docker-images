ARG RUBY_VERSION=2.5.0
# Base our image on our centos with ruby 2.5.0
FROM aaronbronow/centos7_ruby:$RUBY_VERSION
ARG RUBY_VERSION

USER root

# Set the working directory to /var/www - this is where the apps will live
ENV WWW_ROOT /var/www
RUN mkdir -p $WWW_ROOT
WORKDIR $WWW_ROOT

RUN chown -R evt: .

USER evt

ENV PATH "/home/evt/.rvm/gems/ruby-$RUBY_VERSION/bin:/home/evt/.rvm/gems/ruby-$RUBY_VERSION@global/bin:/home/evt/.rvm/rubies/ruby-$RUBY_VERSION/bin:/home/evt/.yarn/bin:/home/evt/.config/yarn/global/node_modules/.bin:$PATH"
ENV GEM_HOME "/home/evt/.rvm/gems/ruby-$RUBY_VERSION"
ENV GEM_PATH "/home/evt/.rvm/gems/ruby-$RUBY_VERSION:/home/evt/.rvm/gems/ruby-$RUBY_VERSION@global"
