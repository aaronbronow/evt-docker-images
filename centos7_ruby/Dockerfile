FROM centos:7

# Configure the main working directory.
# This is the base directory used in any further RUN, COPY, and ENTRYPOINT commands.
ENV APP_HOME /app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# Copy the main application.
COPY . .

# Timezone
RUN rm /etc/localtime && ln -s /usr/share/zoneinfo/America/Los_Angeles /etc/localtime

# Centos dependencies
RUN bash docker/yum-install.sh

# Install Ruby through RVM
# If not running with bash -l, rvm command is not available
RUN bash docker/install-rvm.sh 'stable'
RUN bash -l docker/install-ruby.sh 2.4.2 'bundler -v 1.13.7'

# Node, bundler, gems
# RUN bash -l docker/install-app.sh

# Expose port 3000 and 8888 to the Docker host, so we can access it from the outside.
#EXPOSE 3000 8086
EXPOSE 22 2226
