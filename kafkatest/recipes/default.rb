#
# Cookbook Name:: kafka
# Recipe:: default
#

include_recipe 'kafkatest::_defaults'
include_recipe 'kafkatest::_setup'
include_recipe 'kafkatest::_install'
include_recipe 'kafkatest::_configure'
