# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

#require File.expand_path('../config/application', __FILE__)
require 'rake'

# Temporary / one-shot rake tasks
Dir.glob(File.expand_path( '../bin/tasks/*.rake', __FILE__)).each { |r| import r }
