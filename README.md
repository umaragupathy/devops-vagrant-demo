# devops-vagrant-demo

This project builds a rest service in a unbuntu vagrant virtual box. Service connects to database to store and retrieve data.

Prerequisite

`Chef is install and knife is configured`
`vagrant is installed`

Frameworks used

`Platform - Ubuntu`
`Language - java`
`Application Framework - SpringBoot Rest Framework`
`Database - MySQL`
`Build Tool - Maven`
`Application Server - Tomcat8`
`Web Server - Apache2`
`Configuration Management tool - CHEF Solo`




Create `cookbooks` folder in the project folder and download the below cookbooks

`knife cookbook site install java
knife cookbook site install tomcat8
knife cookbook site install apache2
knife cookbook site install maven
knife cookbook site install mysql
knife cookbook site install database
knife cookbook site install mysql2_chef_gem`

Application start

`vagrant up`

Endpoints

`http://192.168.33.10:8080/vagrant-springboot-app/health`
`http://192.168.33.10:8080/vagrant-springboot-app/get-by-email?email=<emailId>
`http://192.168.33.10:8080/vagrant-springboot-app/create?email=<emailId>&name=<name>`
