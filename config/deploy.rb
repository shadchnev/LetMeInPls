default_run_options[:pty] = true
ssh_options[:forward_agent] = true

set :application, "Let Me In, Pls!"
set :repository,  "git@github.com:shadchnev/LetMeInPls.git"
set :deploy_to, "/var/www/letmeinpls"
set :scm, "git"
set :user, "deploy"
set :branch, "master"
set :deploy_via, :remote_cache
set :use_sudo, false

role :app, "216.154.219.139"
role :web, "216.154.219.139"
role :db,  "216.154.219.139", :primary => true


task :after_deploy do
  run "#{current_path}/script/packageffext"
end

namespace :passenger do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

namespace :deploy do
  desc "Restart the Passenger system."
  task :restart, :roles => :app do
    passenger.restart
  end
end