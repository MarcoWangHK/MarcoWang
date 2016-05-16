#
# Cookbook Name:: kafka
# Recipe:: default
#

include_recipe 'apache_kafka::_defaults'
include_recipe 'apache_kafka::_setup'
include_recipe 'apache_kafka::_install'
include_recipe 'apache_kafka::_configure'
