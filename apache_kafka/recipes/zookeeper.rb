#
# Cookbook Name:: apache kafka
# Recipe:: zookeeper
#
#

execute "update-upgrade" do
  command "apt-get update"
  action :run
end

package "zookeeperd" do
  action :install
end