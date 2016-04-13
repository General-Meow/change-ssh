#!/bin/bash
JAVA_HOME='/usr/lib/jvm/java-6-sun-1.6.0.20'
export JAVA_HOME
JAVA_OPTS='-Xmx128m -XX:MaxPermSize=256m'
export JAVA_OPTS
cd /home/paul/Development/app_servers/wasce/bin
./startup.sh

