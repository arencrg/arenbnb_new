server '127.0.0.1', port: 22, roles: [:web, :app, :db], primary: true
set :stage, :staging
set :branch, :develop
