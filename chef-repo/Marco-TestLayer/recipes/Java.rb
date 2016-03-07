#
# Cookbook Name:: Marco-TestLayer
# Recipe:: Java
#

#Install Java8
execute "add apt repository" do
	command "add-apt-repository -y ppa:webupd8team/java"
	action :run
end

execute "update apt repository" do
	command "apt-get update"
	action :run
end

bash 'echo debconf_set_selections' do
	user 'root'
	cwd '/'
	code <<-EOH
		echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
	EOH
end

execute "install JDK 8" do
	command "apt-get -y install oracle-java8-installer"
	action :run
end

