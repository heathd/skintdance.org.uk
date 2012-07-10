require 'hoe/rake'

# Require Vlad and vlad-git, declare a nil app and nil web as they are not needed
require "vlad"
require "rake/remote_task"
Vlad.load :scm => "git", :app => nil, :web => nil, :config => "config/deploy.rb"
set :bundle_cmd, "source /usr/local/rvm/scripts/rvm && bundle"

namespace :vlad do
  # Vlad by default has an update_symlinks task used for Rails which we do
  # not need in this case. This clears that task.
  Rake.clear_tasks('vlad:update_symlinks')

  task :update_symlinks do
    # nothing
  end
end

# The 'deploy' task brings it all together under one command
task :deploy => %w[
  vlad:update
  vlad:bundle:install
  vlad:jekyll:generate
  vlad:cleanup
]
