server '54.169.79.193', port: 22, roles: [:web, :app, :db], primary: true
set :stage, :staging
set :branch, :deploymentbranch
