default_run_options[:pty] = true
ssh_options[:forward_agent] = true

set :application, "Let Me In, Pls!"
set :repository,  "git@github.com:shadchnev/LetMeInPls.git"
set :deploy_to, "/var/www/letmein"
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

task :start, :roles => :app do
end

task :restart, :roles => :app do
end

task :after_update_code, :roles => :app do

end