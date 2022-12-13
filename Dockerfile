FROM arunans23/wso2mi:4.2.0-SNAPSHOT
COPY CompositeApps/*.car ${WSO2_SERVER_HOME}/repository/deployment/server/carbonapps/
# COPY Resources/wso2carbon.jks ${WSO2_SERVER_HOME}/repository/resources/security/wso2carbon.jks
# COPY Resources/client-truststore.jks ${WSO2_SERVER_HOME}/repository/resources/security/client-truststore.jks
# COPY Libs/*.jar ${WSO2_SERVER_HOME}/lib/
RUN ${WSO2_SERVER_HOME}/bin/extension-runner.sh
COPY Resources/docker-entrypoint.sh /home/wso2carbon/docker-entrypoint.sh

USER 10001