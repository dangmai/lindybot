FROM centos:centos6

# Enable EPEL for Node.js
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
# Install Node.js and npm
RUN     yum install -y npm git

ADD lindybot.sh /tmp/

RUN chmod +x /tmp/lindybot.sh

CMD ./tmp/lindybot.sh
