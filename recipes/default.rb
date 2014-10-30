#
# Cookbook Name:: datahub
# Recipe:: default
#
# Copyright (C) 2014 Joe Heung
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'java'

if node['datahub']['account_key'].nil? or node['datahub']['account_key'].empty?
  Chef::Log.error('You have not specified an account key. Look here for more info: https://logentries.com/doc/datahub-linux/')
end

datahub_deb = "leproxy_#{node['datahub']['version']}.deb"

remote_file "#{Chef::Config[:file_cache_path]}/#{datahub_deb}" do
  source node['datahub']['url']
end

dpkg_package 'leproxy' do
  source "#{Chef::Config['file_cache_path']}/#{datahub_deb}"
  action :install
end

file '/etc/leproxy/leproxy.config' do
  backup 5
  content JSON.pretty_generate(node['datahub']['config'])
  owner 'root'
  group 'root'
  mode '0750'
end

file '/etc/leproxy/leproxyLocal.config' do
  backup 5
  content JSON.pretty_generate(node['datahub']['configLocal'])
  owner 'root'
  group 'root'
  mode '0750'
end

execute 'setup authentication keys' do
  command 'java -jar /usr/share/leproxy/leproxy.jar genkeys /etc/leproxy/'
  not_if { ::File.exists?('/etc/leproxy/private_key.txt')}
end

service 'leproxy' do
  supports :start => true, :stop => true, :restart => true, :status => true
  action :start
end