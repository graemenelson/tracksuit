require 'webrat'
require 'cucumber/formatter/unicode'
require 'webrat/core/matchers'
require 'spec/expectations'
require 'webrat/sinatra'

# load the app
require File.expand_path( File.join( File.dirname(__FILE__), "/../../lib/app") )


class Context
  def self.app
    ::Application
  end
end

World do
  session = Webrat::SinatraSession.new( Context )
  session.extend(Webrat::Matchers)
  session.extend(Webrat::HaveTagMatcher)
  session
end