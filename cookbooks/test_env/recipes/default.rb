#
# Cookbook:: test_env
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

apt_update "update" do
  action :update
end

package "python3-dev" do
  action :install
end

package "python3-pip" do
  action :install
end

execute "pip3 install requirements" do
  command "pip3 install -r /home/ubuntu/code/requirements.txt"
  cwd '/home/ubuntu'
end

directory '/home/vagrant/Downloads' do
  action :create
  mode '0777'
end
