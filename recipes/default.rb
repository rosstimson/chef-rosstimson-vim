# Encoding: utf-8
#
# Cookbook Name:: rosstimson-vim
# Recipe:: default
#
# Copyright (C) 2014 Ross Timson <ross@rosstimson.com>, rosstimson.com
#
# License:: WTFPL

include_recipe 'build-essential'
include_recipe 'python'
include_recipe 'mercurial'

cache_path = Chef::Config['file_cache_path']

node['rosstimson-vim']['dependencies'].each do |dependency|
  package dependency do
    action :install
  end
end

# Clone the Vim repo into the Chef cache / temporary area.
mercurial "#{Chef::Config['file_cache_path']}/vim" do
  repository 'https://vim.googlecode.com/hg'
  notifies :run, 'bash[compile_vim]', :immediately
end

bash 'compile_vim' do
  user 'root'
  cwd "#{cache_path}/vim"
  code <<-EOH
    ./configure #{node['rosstimson-vim']['configuration']}
    make
    make install
  EOH
  action :nothing
end
