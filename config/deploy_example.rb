# setup rvm
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require 'rvm/capistrano'
set :rvm_ruby_string, '1.9.2-p290'
set :rvm_type, :root

# setup bundler
require 'bundler/capistrano'

# setup multistage
set :stages, %w(integration staging production)
set :default_stage, "integration"
require 'capistrano/ext/multistage'

# main details
set :application, "xxx"

# deployment details
set :deploy_via, :remote_cache
set :user, "root"
set :use_sudo, false
set :deploy_to do
  path = "/home/#{application}"
  path << "-#{stage}" unless stage.to_s == "production"
  path
end
set :rails_env do
  stage
end

# repo details
set :scm, :git
set :repository do
  "git@xxx:#{application}.git"
end
set :keep_releases, 3
set :branch do
  default_tag = `git tag`.split("\n").last
  tag = Capistrano::CLI.ui.ask "Tag to deploy (make sure to push the tag first): [#{default_tag}] "
  tag.empty? ? default_tag : tag
end

# server details
set :unicorn_pid do
  "#{shared_path}/pids/unicorn.pid"
end

# ugly workaround for bug https://github.com/capistrano/capistrano/issues/81
before "deploy:assets:precompile", "bundle:install"

# remove old releases
after "deploy", "deploy:cleanup"

namespace :deploy do
  task :start do
    top.unicorn.start
  end

  task :stop do
    top.unicorn.stop
  end

  task :restart do
    top.unicorn.reload
  end
end

namespace :unicorn do
  desc "start unicorn"
  task :start, :roles => :app do
    run "cd #{current_path} && bundle exec unicorn -c config/unicorn.rb -E #{rails_env} -D"
  end

  desc "stop unicorn"
  task :stop, :roles => :app do
    run "#{try_sudo} kill -s QUIT `cat #{unicorn_pid}`"
  end

  desc "restart unicorn"
  task :restart, :roles => :app do
    top.unicorn.stop
    top.unicorn.start
  end

  desc "reload unicorn (gracefully restart workers)"
  task :reload, :roles => :app do
    run "#{try_sudo} kill -s USR2 `cat #{unicorn_pid}`"
  end

  desc "reconfigure unicorn (reload config and gracefully restart workers)"
  task :reconfigure, :roles => :app do
    run "#{try_sudo} kill -s HUP `cat #{unicorn_pid}`"
  end
end