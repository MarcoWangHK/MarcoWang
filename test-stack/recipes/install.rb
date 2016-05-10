#
# Cookbook Name:: test-stack
# Recipe:: install
#
#

#include_recipe 'test-stack::java'
include_recipe 'test-stack::zookeeper'
include_recipe 'test-stack::kafka'
include_recipe 'test-stack::kafka_config'