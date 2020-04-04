FROM jenkins/jenkins:lts
COPY assets/plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY assets/hudson.tasks.Maven.xml /var/jenkins_home/hudson.tasks.Maven.xml
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false