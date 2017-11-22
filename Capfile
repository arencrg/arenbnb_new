require 'capistrano/setup'
require 'capistrano/deploy'
require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git
require 'capistrano/bundler'
require 'capistrano/rbenv'
require 'capistrano/rbenv_install'
require 'capistrano/puma'
install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Nginx
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
