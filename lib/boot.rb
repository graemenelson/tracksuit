# lets load any necessary gems
project_root = File.expand_path( File.join( File.dirname(__FILE__), "/..") )
@@local_gems = ['sinatra', 'haml']
@@local_gems.each do |name|
  gem_dir = File.join( project_root, "vendor/#{name}")
  $LOAD_PATH.unshift( "#{gem_dir}/lib" ) unless $LOAD_PATH.include?( "#{gem_dir}/lib" )
end

require 'rubygems'
require 'sinatra'
require 'haml'