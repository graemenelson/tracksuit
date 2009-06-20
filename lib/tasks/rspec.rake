# lets use rspec in the our vendor directory.
rspec_vendor_gem_dir = File.expand_path( File.join( PROJECT_ROOT, '/vendor/rspec') )
$LOAD_PATH.unshift( "#{rspec_vendor_gem_dir}/lib" ) if File.exists?( rspec_vendor_gem_dir )

require 'spec/rake/spectask'

spec_prereq = :noop # currently we don't require any setup to happen before running specs
task :noop do
end

Spec::Rake::SpecTask.new(:spec => spec_prereq) do |t|
  t.spec_opts = ['--options', "\"#{PROJECT_ROOT}/spec/spec.opts\""]
  t.spec_files = FileList['spec/**/*/*_spec.rb']
end

