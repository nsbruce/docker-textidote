FROM frolvlad/alpine-java:jdk8-slim

LABEL Nicholas Bruce nicholas@nicholasbruce.ca

WORKDIR /data

RUN apk --no-cache add wget \
&& mkdir /temp && cd /temp \
&& wget https://github.com/sylvainhalle/textidote/releases/download/v0.7.1/textidote.jar

VOLUME [ "/data" ]

ENTRYPOINT [ "java", "-jar", "/temp/textidote.jar" ]