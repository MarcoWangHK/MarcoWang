#
# Cookbook Name:: apache kafka
# Recipe:: kafka
#
#

directory "/home/Downloads" do
	owner 'root'
	group 'root'
	mode 0755
    action :create
end


execute "download-kafka" do
  command "wget http://ftp.cuhk.edu.hk/pub/packages/apache.org/kafka/0.8.2.2/kafka_2.10-0.8.2.2.tgz -O /home/Downloads/kafka.tgz"
  action :run
end

directory "/opt/kafka" do
	owner 'root'
	group 'root'
	mode 0755
    action :create
end

execute "cd" do
  command "cd /opt/kafka"
  command "sudo tar -xvzf /home/Downloads/kafka.tgz --strip 1"
  action :run
end