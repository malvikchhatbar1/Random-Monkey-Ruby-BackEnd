set :application, "randomMonkey"
#set :repository,  "https://github.com/malvikchhatbar1/randomMonkey.git"
#set :scm, :git

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "/var/www/~mchhatba/public_html/r"

server "scs.ryerson.ca", :app, :web, :db, :primary => true
#role :web, "www.ik13.org/cps630"                          # Your HTTP server, Apache/etc
#role :app, "www.ik13.org/cps630"                          # This may be the same as your `Web` server
#role :db,  "www.ik13.org/cps630", :primary => true # This is where Rails migrations will run

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
