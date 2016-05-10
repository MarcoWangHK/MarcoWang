#
# Cookbook Name:: test-stack
# Recipe:: kafka_config
#
# 

execute "backup config" do
  command "mv /opt/kafka/config/server.properties /opt/kafka/config/server_copy.properties"
  action :run
end

template "/opt/kafka/config/server.properties" do
	source "kafka_config.erb"
	owner 'root'
	group 'root'
end

template "/opt/kafka/bin/kafka.sh" do
	source "kafka_script.erb"
	owner 'root'
	group 'root'
	mode 0755
end