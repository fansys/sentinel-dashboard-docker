#!/bin/sh
#startup Server
RUN_CMD="java"

# 应用参数
RUN_CMD="$RUN_CMD -Dserver.port:\"$SERVER_PORT\""
RUN_CMD="$RUN_CMD -Dcsp.sentinel.dashboard.server=\"$DASHBOARD_SERVER\""
RUN_CMD="$RUN_CMD -Dproject.name=\"$PROJECT_NAME\""
RUN_CMD="$RUN_CMD -Dauth.enabled=\"$AUTH_ENABLED\""
RUN_CMD="$RUN_CMD -Dsentinel.dashboard.auth.username=\"$AUTH_USERNAME\""
RUN_CMD="$RUN_CMD -Dsentinel.dashboard.auth.password=\"$AUTH_PASSWORD\""
RUN_CMD="$RUN_CMD -Dserver.servlet.session.cookie.name=\"$AUTH_COOKIE_NAME\""

RUN_CMD="$RUN_CMD $JAVA_OPTS"
RUN_CMD="$RUN_CMD -jar"
RUN_CMD="$RUN_CMD sentinel-dashboard.jar"

echo $RUN_CMD
eval $RUN_CMD
