project_root = File.expand_path( File.join( File.dirname(__FILE__), "/..") )

# load the application
require File.join( project_root, "/lib/boot" )
require File.expand_path( File.join( File.dirname(__FILE__), "../lib/app") )

@@test_gems = ['rack-test']
@@test_gems.each do |name|
  gem_dir = File.join( project_root, "vendor/#{name}")
  $LOAD_PATH.unshift( "#{gem_dir}/lib" ) unless $LOAD_PATH.include?( "#{gem_dir}/lib" )
end

require 'spec'
require 'spec/interop/test'
require 'rack/test'

set :environment, :test

Spec::Runner.configure do |config|
  config.include Rack::Test::Methods

  def app
    Application
  end

end

