# devops-vagrant-demo

INTRODUCTION
------------

 Springboot rest service hosted in a unbuntu vagrant virtual box. 
 Service connects to MySQL database to store and retrieve data.


FRAMEWORKS INSTALLATION
-----------------------

* `Platform - Ubuntu`

* `Language - JAVA`

* `Application Framework - SpringBoot Rest Framework`

* `Database - MySQL`

* `Build Tool - Maven`

* `Application Server - Tomcat8`

* `Web Server - Apache2`

* `Configuration Management tool - CHEF Solo`



CHEF COOKBOOKS
--------------

* `knife cookbook site install java`

* `knife cookbook site install tomcat8`

* `knife cookbook site install apache2`

* `knife cookbook site install maven`

* `knife cookbook site install mysql`

* `knife cookbook site install database`

* `knife cookbook site install mysql2_chef_gem`

BUILD
-----

`vagrant up`

ENDPOINTS
---------
 - Health
http://192.168.33.10:8080/vagrant-springboot-app/health

 - DB Create Record
http://192.168.33.10:8080/vagrant-springboot-app/create?email=emailId&name=name

 - DB Retrieve Record
http://192.168.33.10:8080/vagrant-springboot-app/get-by-email?email=emailId
