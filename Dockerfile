FROM sonarqube:latest
RUN set -x \
  && wget https://github.com/SonarSource/sonar-ldap/releases/download/2.2-RC3/sonar-ldap-plugin-2.2.0.601.jar -P /opt/sonarqube/extensions/plugins/ \
  && chown -R sonarqube:sonarqube /opt/sonarqube/extensions/plugins/

# install OWAS dependency-check plugin
RUN set -x \
  && wget https://github.com/stevespringett/dependency-check-sonar-plugin/releases/download/1.2.1/sonar-dependency-check-plugin-1.2.1.jar -P /opt/sonarqube/extensions/plugins/ \
  && chown -R sonarqube:sonarqube /opt/sonarqube/extensions/plugins/

