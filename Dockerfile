FROM quay-io-proxy-cache/wildfly/wildfly:27.0.0.Final-jdk17

RUN /opt/jboss/wildfly/bin/add-user.sh -u 'admin' -p 'admin'

ADD ./target/*.war /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]