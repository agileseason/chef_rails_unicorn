#
# Cookbook Name:: chef_rails_unicorn
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

app = AppHelpers.new node['app']

template "/etc/init.d/#{app.service :unicorn}" do
  source 'init_unicorn.erb'

  variables(
    app_name: app.name,
    app_user: app.user,
    app_env: app.env,
    app_root: app.dir(:root),
    app_shared: app.dir(:shared)
  )

  mode '0755'
end

if File.exists? app.dir(:root)
  service(app.service(:unicorn)) { action :enable }
end
