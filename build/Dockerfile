FROM java:alpine
MAINTAINER zhoutaoo "cheney256@163.com"

# set environment
ENV BASE_DIR="/home/sentinel" \
    SERVER_PORT="8021" \
    DASHBOARD_SERVER="localhost:8021" \
    PROJECT_NAME="sentinel-dashboard" \
    AUTH_ENABLED="false" \
    AUTH_USERNAME="sentinel" \
    AUTH_PASSWORD="sentinel" \
    AUTH_COOKIE_NAME="sentinel-dashboard" \
    JAVA_OPTS="" \
    TIME_ZONE="Asia/Shanghai"

WORKDIR /$BASE_DIR

RUN set -x \
    ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo '$TIME_ZONE' > /etc/timezone

ADD bin/docker-entrypoint.sh bin/docker-entrypoint.sh
ADD sentinel-dashboard.jar sentinel-dashboard.jar

# set startup log dir
RUN mkdir -p logs \
	&& cd logs \
	&& touch start.out \
	&& ln -sf /dev/stdout start.out \
	&& ln -sf /dev/stderr start.out
RUN chmod +x bin/docker-entrypoint.sh

EXPOSE 8021
ENTRYPOINT ["bin/docker-entrypoint.sh"]
