FROM jpetazzo/dind
MAINTAINER koduki

# Install Jenkins
WORKDIR /tmp
RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
RUN echo 'deb http://pkg.jenkins-ci.org/debian binary/' >> /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install jenkins
RUN apt-get clean

# Add Jenkins jobs
ADD resources/simple-test01/ /var/lib/jenkins/jobs/simple-test01/

# Run
ADD resources/run.sh /tmp/run.sh
WORKDIR /var/lib/jenkins
ENTRYPOINT /tmp/run.sh
