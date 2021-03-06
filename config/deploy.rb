# config valid for current version and patch releases of Capistrano
lock "~> 3.10.0"

server '45.55.170.122', user: 'deploy', roles: %w{app db web}


set :application, "kaoandgao"
set :repo_url, "https://github.com/Kaoxyooj/kaoandgao.git"

set :deploy_to, '/home/deploy/kaoandgao'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"

set :keep_releases, 5

# task :get_passenger_instance_name do
#   on roles(:app :db :web) do
#     set :passenger_instance_name, capture(:"/FULL/PATH/TO/passenger-status || true").scan(/^(\S+)\s+nginx.*$/)[0][0]
#   end
# end

# set :passenger_restart_command,
#   ->{ "passenger-config restart-app --instance #{fetch(:passenger_instance_name)}" }

# before :deploy, :get_passenger_instance_name


# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
