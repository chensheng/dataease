FROM ubuntu:18.04

RUN apt-get update --fix-missing
RUN apt-get install -y openjdk-8-jre-headless
RUN apt-get install -y build-essential
RUN apt-get install -y unzip
RUN apt-get install -y chromium-browser chromium-chromedriver

RUN mkdir -p /opt/apps /opt/dataease/data/feature/full /opt/dataease/drivers /opt/dataease/data/kettle /opt/dataease/static-resource /opt/dataease/custom-drivers /opt/dataease/plugins/thirdpart /opt/dataease/logs

ADD mapFiles/* /opt/dataease/data/feature/full/

ADD drivers/* /opt/dataease/drivers/

COPY backend/target/*.jar /opt/apps

WORKDIR /opt/apps

CMD ["/bin/sh", "-c", "java -jar *.jar"]
