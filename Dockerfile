FROM sonarqube:alpine
RUN set -x \
  && wget https://github.com/SonarSource/sonar-ldap/releases/download/2.2-RC3/sonar-ldap-plugin-2.2.0.601.jar -P /opt/sonarqube/extensions/plugins/ \
  && chown -R sonarqube:sonarqube /opt/sonarqube/extensions/plugins/
