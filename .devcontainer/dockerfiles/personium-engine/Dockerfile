FROM tomcat:9-jdk17-temurin

ARG USERNAME=personium
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

ARG ENGINE_VER=1.6.0
ENV ENGINE_URL=https://github.com/personium/personium-engine/releases/download/v${ENGINE_VER}/personium-engine-${ENGINE_VER}.war

# Create User
RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME} \
    && apt-get update \
    && apt-get install -y sudo \
    vim jq iputils-ping unzip \
    && echo ${USERNAME} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/${USERNAME} \
    && chmod 0440 /etc/sudoers.d/${USERNAME}

WORKDIR /usr/local/tomcat/webapps/

RUN curl -L -o personium-engine.war ${ENGINE_URL} \
  && unzip personium-engine.war -d personium-engine

USER ${USERNAME}

EXPOSE 8080

ENTRYPOINT [ "/usr/local/tomcat/bin/catalina.sh", "run" ]
