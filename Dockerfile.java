FROM java

LABEL Nicholas Bruce nicholas@nicholasbruce.ca

WORKDIR /data

COPY textidote.jar /temp/textidote.jar

VOLUME [ "/data" ]

ENTRYPOINT [ "java", "-jar", "/temp/textidote.jar" ]