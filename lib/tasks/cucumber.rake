# lets use cucumber in the our vendor directory.
cucumber_vendor_gem_dir = File.expand_path( File.join( PROJECT_ROOT, '/../../vendor/cucumber') )
$LOAD_PATH.unshift( "#{cucumber_vendor_gem_dir}/lib" ) if File.exists?( cucumber_vendor_gem_dir )

require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format pretty"
end