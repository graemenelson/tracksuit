require 'rake'
require 'rake/rdoctask'

PROJECT_ROOT = File.expand_path( File.dirname(__FILE__) )

# load rake files in lib/tasks
Dir["lib/tasks/*.rake"].sort.each {|entry| load entry }

namespace :libraries do
  
  desc "gives the current version of all the installed libraries (if possible)"
  task :versions do
    require 'cucumber/version'
    require 'spec/version'
    require 'webrat'
    require 'sinatra'
    
    puts "Sinatra:  #{Sinatra::VERSION}"
    puts "RSpec:    #{Spec::VERSION::STRING}"
    puts "Cucumber: #{Cucumber::VERSION::STRING}"
    puts "Webrat:   #{Webrat::VERSION}"
    
  end
  
end




