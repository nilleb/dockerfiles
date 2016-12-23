FROM microsoft/windowsservercore

RUN powershell Invoke-WebRequest -Uri https://github.com/ojdkbuild/ojdkbuild/releases/download/1.8.0.111-3/java-1.8.0-openjdk-1.8.0.111-3.b15.ojdkbuild.windows.x86_64.msi \
	&& start /wait msiexec /i java-1.8.0-openjdk-1.8.0.111-1.b15.redhat.windows.x86_64.msi /qn /l*v openjdk.log \
	&& del java-1.8.0-openjdk-1.8.0.111-1.b15.redhat.windows.x86_64.msi

ENV JAVA_HOME "C:\Program Files\RedHat\java-1.8.0-openjdk-1.8.0.111-1"

CMD ["cmd.exe"]