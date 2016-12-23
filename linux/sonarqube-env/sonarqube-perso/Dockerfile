FROM sonarqube:6.2

MAINTAINER Ivo Bellin Salarin <me@nilleb.com>

ARG http_proxy

RUN cd /opt/sonarqube/extensions/plugins \
	&& ls -al \
	&& curl -x "$http_proxy" -o sonar-python-plugin-1.6.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-python-plugin/sonar-python-plugin-1.6.jar \
	&& curl -x "$http_proxy" -o sonar-auth-google-plugin-0.5-SNAPSHOT.jar -fSL https://github.com/eladamitpxi/sonar-auth-google/releases/download/0.5/sonar-auth-google-plugin-0.5-SNAPSHOT.jar \
	&& curl -x "$http_proxy" -o sonar-scm-git-plugin-1.2.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-scm-git-plugin/sonar-scm-git-plugin-1.2.jar \
	&& curl -x "$http_proxy" -o sonar-github-plugin-1.3.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-github-plugin/sonar-github-plugin-1.3.jar \
	&& curl -x "$http_proxy" -o sonar-auth-github-plugin-1.3.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-auth-github-plugin/sonar-auth-github-plugin-1.3.jar \
	&& curl -x "$http_proxy" -o sonar-javascript-plugin-2.18.0.3454.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-2.18.0.3454.jar \
	&& ls -al

WORKDIR $SONARQUBE_HOME
ENTRYPOINT ["./bin/run.sh"]
