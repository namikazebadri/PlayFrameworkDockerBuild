FROM openjdk:11.0.10-jdk

ENV PLAY_HOME=/app

RUN mkdir -p $PLAY_HOME

WORKDIR $PLAY_HOME/play-docker-build

COPY . $PLAY_HOME

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update
RUN apt-get install sbt
RUN apt-get -y install curl

EXPOSE 9000

ENTRYPOINT ["sbt", "run"]