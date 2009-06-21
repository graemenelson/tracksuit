project_root    = File.expand_path( File.join( File.dirname(__FILE__), '..') )

require File.join( project_root, 'lib/boot' )
require File.join( project_root, 'lib/app' )

Application.run!

