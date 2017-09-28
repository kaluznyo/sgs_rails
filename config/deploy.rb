# config valid only for current version of Capistrano
lock "3.9.1"

set :application, "sgs"
set :repo_url, "git@example.com:me/my_repo.git"

set :deploy_to, '/home/deploy/my_app_name'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"