set args=x%*x
if not x%args:~1,1%x == x-x ( %* ) else (
	java -jar lib/sonar-application-%SONAR_VERSION%.jar -Dsonar.log.console=true -Dsonar.jdbc.username="%SONARQUBE_JDBC_USERNAME%" -Dsonar.jdbc.password="%SONARQUBE_JDBC_PASSWORD%" -Dsonar.jdbc.url="%SONARQUBE_JDBC_URL%" -Dsonar.web.javaAdditionalOpts="%SONARQUBE_WEB_JVM_OPTS% -Djava.security.egd=file:/dev/./urandom" %*
)