# Base our image on our centos with ruby 2.4.2
FROM aaronbronow/centos7_ruby:2.4.2

# Set the working directory to /var/www - this is where the apps will live
ENV WWW_ROOT /var/www
RUN mkdir -p $WWW_ROOT
WORKDIR $WWW_ROOT

COPY apps .

# Set up app users
RUN groupadd docker

RUN adduser laboriq; \
  adduser mylaborlink; \
  adduser datawarehouse

RUN usermod -a -G docker laboriq; \
  usermod -a -G docker mylaborlink; \
  usermod -a -G docker datawarehouse

RUN chown -R mylaborlink:docker mylaborlink; \
  chown -R laboriq:docker laboriq; \
  chown -R datawarehouse:docker datawarehouse