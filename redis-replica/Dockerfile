FROM xmlangel/redis
MAINTAINER Kwangmyung Kim <kwangmyung.kim@gmail.com>
ENV REFRESHED_AT 2016-10-06
ENTRYPOINT ["redis-server", "--logfile /var/log/redis/redis-replica.log", "--slaveof redis-primary 6379"]
