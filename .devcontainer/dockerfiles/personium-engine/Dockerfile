FROM tomcat:9-jdk17-temurin

ARG ENGINE_VER=1.6.0
ENV ENGINE_URL=https://github.com/personium/personium-engine/releases/download/v${ENGINE_VER}/personium-engine-${ENGINE_VER}.war

# Create User
RUN apt-get update \
    && apt-get install -y vim jq iputils-ping unzip

WORKDIR /usr/local/tomcat/webapps/

COPY personium-unit-config.properties /personium/personium-engine/personium-unit-config.properties

RUN curl -L -o personium-engine.war ${ENGINE_URL} \
  && unzip personium-engine.war -d personium-engine

EXPOSE 8080

ENTRYPOINT [ "/usr/local/tomcat/bin/catalina.sh", "run" ]
