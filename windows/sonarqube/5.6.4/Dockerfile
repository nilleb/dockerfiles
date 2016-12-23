FROM nilleb/openjdk-for-windows

MAINTAINER Ivo Bellin Salarin <me@nilleb.com>

ENV SONAR_VERSION=5.6.4 \
    # Database configuration
    # Defaults to using H2
    SONARQUBE_JDBC_USERNAME=sonar \
    SONARQUBE_JDBC_PASSWORD=sonar \
    SONARQUBE_JDBC_URL=

# Http port
EXPOSE 9000

RUN powershell Invoke-WebRequest -outfile sonarqube.zip -uri https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-%SONAR_VERSION%.zip \
    && powershell "Add-Type -AssemblyName System.IO.Compression.FileSystem; [System.IO.Compression.ZipFile]::ExtractToDirectory('sonarqube.zip', 'c:\')" \
    && move sonarqube-%SONAR_VERSION% sonarqube \
    && del sonarqube.zip \
# otherwise I get strange errors on container instantiation
    && del c:\sonarqube\data\README.txt \
    && for /d %x in (C:\sonarqube\bin\*) do @rd /s /q "%x" 

VOLUME c:/sonarqube/data

WORKDIR C:/sonarqube
COPY run.cmd C:/sonarqube/bin/
ENTRYPOINT ["C:\\sonarqube\\bin\\run.cmd"]