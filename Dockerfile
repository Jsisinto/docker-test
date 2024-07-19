FROM quay.io/wildfly/wildfly:27.0.0.Final-jdk11

RUN /opt/jboss/wildfly/bin/add-user.sh -u 'admin' -p 'admin' --silent

ADD ./target/*.war /opt/jboss/wildfly/standalone/deployments/

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
