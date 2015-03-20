FROM registry

MAINTAINER Jason Sallis <jason@sall.is>

RUN apt-get update
RUN apt-get install -y python-psycopg2
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV SEARCH_BACKEND sqlalchemy
