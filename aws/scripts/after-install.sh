#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeploystack-webappdeploymentbucket-sjfjvgm9ghr6/SpringBootHelloWorldExampleApplication.war /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war
aws s3 cp s3://codedeploystack-webappdeploymentbucket-sjfjvgm9ghr6/FlaskApplication.py /usr/local/tomcat9/webapps/FlaskApplication


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps