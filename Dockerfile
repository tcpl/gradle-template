FROM openjdk:8-jdk-slim

RUN apt-get update && \
    apt-get install -y gradle && \
    rm -rf /var/lib/apt/lists/*

VOLUME [ "/app" ]
WORKDIR /app

CMD [ "gradle", "-Dorg.gradle.daemon=false", "test" ]
