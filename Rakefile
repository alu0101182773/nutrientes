$:.unshift File.dirname(__FILE__) + 'lib'

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
