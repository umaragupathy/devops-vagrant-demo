service "tomcat8" do
  action :stop
end

execute "build-vagrant-springboot-app" do
  command "mvn clean package"
  cwd "/vagrant/vagrant-springboot-app"
  user "root"
  group "root"
  action :run
end

remote_file "copy-war" do
  path "/var/tomcat8/webapps/vagrant-springboot-app.war"
  source "file:///vagrant/vagrant-springboot-app/target/vagrant-springboot-app.war"
  owner 'root'
  group 'root'
  mode 0755
end

service "tomcat8" do
  action :start
end
