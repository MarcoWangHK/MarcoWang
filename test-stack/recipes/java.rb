#
# Cookbook Name:: test-stack
# Recipe:: java
#
#

execute "update-upgrade" do
  command "apt-get update && apt-get upgrade -y"
  action :run
end

execute "java-install1" do
  command "sudo add-apt-repository -y ppa:webupd8team/java"
    action :run
end

execute "java-install2" do
  command "echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections"
    action :run
end

execute "java-install3" do
  command "sudo apt-get update && sudo apt-get -y install oracle-java8-installer"
  action :run
end