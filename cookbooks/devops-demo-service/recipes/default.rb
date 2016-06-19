#
# Cookbook Name:: mysql-service
# Recipe:: default
#
# Copyright 2016, Uma
#
# All rights reserved - Do Not Redistribute
#

# Configure the MySQL client.
mysql_client 'default' do
  action :create
end

mysql_service 'default' do
  port '3306'
  version '5.5'
  initial_root_password 'password'
  bind_address '0.0.0.0'
  data_dir '/data'
  action [:create, :start]
end

# Install the mysql2 Ruby gem.
mysql2_chef_gem 'default' do
  action :install
end

# Create a mysql database on a named mysql instance
mysql_database 'springboot-db' do
  connection(
    :host     => '127.0.0.1',
    :username => 'root',
    :socket   => "/var/run/mysql-springboot-db-service/mysqld.sock",
    :password => 'password'
  )
  action :create
end

# Add a database user.
mysql_database_user 'db_admin' do
  connection(
    :host => '127.0.0.1',
    :username => 'root',
    :password => 'password'
  )
  password 'db-admin'
  database_name 'springboot-db'
  host '127.0.0.1'
  action [:create, :grant]
end
