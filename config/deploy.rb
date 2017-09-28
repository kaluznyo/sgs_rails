# config valid only for current version of Capistrano
lock "3.9.1"

set :application, "sgs"
set :repo_url, "git@github.com:kaluznyo/sgs_rails.git"

set :deploy_to, '/home/deploy/sgs'

append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"