require "bundler/vlad"

set :application, "skintdance.org.uk"
set :domain, "davidheath.org"
set :deploy_to, "/home/heathd/sites/#{application}"
set :repository, "git@github.com:heathd/skintdance.org.uk.git"
set :web_command, 'sudo apache2ctl'
set :shared_paths, {
  'data' => 'www/data'
}
set :skip_scm, false
