FROM nilleb/sonarqube-for-windows:5.6

MAINTAINER Ivo Bellin Salarin <me@nilleb.com>

ARG INVOKE_WEBREQUEST_OPTIONS

RUN cd C:\sonarqube\extensions\plugins \
	&& powershell Invoke-WebRequest %INVOKE_WEBREQUEST_OPTIONS% -outfile sonar-activedirectory-plugin-1.0.jar -uri https://github.com/SonarQubeCommunity/sonar-activedirectory/releases/download/1.0/sonar-activedirectory-plugin-1.0.jar \
	&& powershell Invoke-WebRequest %INVOKE_WEBREQUEST_OPTIONS% -outfile sonar-delphi-plugin-0.3.4-16012016.jar -uri https://github.com/fabriciocolombo/sonar-delphi/releases/download/0.3.4-SNAPSHOT/sonar-delphi-plugin-0.3.4-16012016.jar \
	&& powershell Invoke-WebRequest %INVOKE_WEBREQUEST_OPTIONS% -outfile sonar-css-plugin-2.4.jar -uri https://github.com/racodond/sonar-css-plugin/releases/download/2.4/sonar-css-plugin-2.4.jar \
	&& powershell Invoke-WebRequest %INVOKE_WEBREQUEST_OPTIONS% -outfile sonar-findbugs-plugin-3.4.4.jar -uri https://github.com/SonarQubeCommunity/sonar-findbugs/releases/download/3.4.4/sonar-findbugs-plugin-3.4.4.jar \
	&& powershell Invoke-WebRequest %INVOKE_WEBREQUEST_OPTIONS% -outfile sonar-json-plugin-2.1.jar -uri https://github.com/racodond/sonar-json-plugin/releases/download/2.1/sonar-json-plugin-2.1.jar \
	&& powershell Invoke-WebRequest %INVOKE_WEBREQUEST_OPTIONS% -outfile sonar-javascript-plugin-2.18.0.3454.jar -uri https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-2.18.0.3454.jar

WORKDIR C:/sonarqube
ENTRYPOINT ["C:\\sonarqube\\bin\\run.cmd"]
