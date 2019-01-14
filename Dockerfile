FROM ubuntu:xenial-20181113

RUN apt update && apt-get install -y \
openjdk-8-jdk \
iputils-ping

RUN apt-get clean

COPY jar /home/jar

WORKDIR /home/jar

COPY scripts/run_jar.sh /home/jar/run_jar.sh

ENV server_port=SERVER_PORT_NOT_PROVIDED

ARG jar_name=JAR_NAME_NOT_PROVIDED

ENV jar_name_env=${jar_name}

CMD ["/home/jar/run_jar.sh"]